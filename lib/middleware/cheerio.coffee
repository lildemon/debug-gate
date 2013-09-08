cheerio = require 'cheerio'
concat = require 'concat-stream'
zlib = require 'zlib'

exports.middleware = (req, res, next) ->
	if (filter = req.user?.getFilter req.fullURL) and filter.enabled

		_write = res.write
		_end = res.end

		# Prevent headers from being finalized
		_writeHead = res.writeHead

		head_wroted = {}

		res.writeHead = (statusCode, headers) ->
			head_wroted.statusCode = statusCode
			head_wroted.headers = headers

		writeHeadBack = ->
			res.writeHead = _writeHead
			
			if head_wroted.statusCode
				res.writeHead head_wroted.statusCode, head_wroted.headers

		cheerilize = ->
			streamer = cheerioStream = concat (data) ->
				result = null
				try
					# For GBK Websites, iconv might needed in here
					$ = cheerio.load data.toString()
					mapfn = eval "'use strict'; (#{filter.map})"
					mapfn $
					result = $.html()
				catch
					console.log """
						Map Function of URL #{req.fullURL} Parse Failed \n
						In filter: #{filter.map}
					"""
					result = data

				#console.log result
				#writeHeadBack()
				res.end result

			if (res.getHeader 'Content-Encoding') is 'gzip'
				console.log "Creating gzip Streamer"
				streamer = zlib.createGunzip()
				streamer.pipe cheerioStream

			first_write = false
			res.write = (data) ->
				unless first_write
					first_write = true
					res.removeHeader 'content-encoding'
					res.removeHeader 'content-length'
					res.type 'html'
					_writeHead.call res, head_wroted.statusCode or 200

				streamer.write data

			res.end = (data) ->
				res.writeHead = _writeHead
				res.end = _end
				res.write = _write
				streamer.end data

		write_called = false
		res.write = (data) ->
			write_called = true

			contType = res.getHeader 'Content-Type' || head_wroted.headers?['Content-Type']
			if contType and (!!~contType.indexOf('text/html') or !!~contType.indexOf('text/plain'))
				cheerilize()
				res.write data
			else
				writeHeadBack()
				res.write = _write
				res.end = _end
				res.write data

		res.end = (data, encoding) ->
			unless write_called
				res.write = _write
				res.end = _end
				writeHeadBack()
				res.end data
			else
				res.write data
				res.end()

		next()

	else
		next()




