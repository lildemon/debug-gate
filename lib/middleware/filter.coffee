trumpet = require 'trumpet'
concat = require 'concat-stream'


exports.middleware = (req, res, next) ->
	

	if filters = req.user?.getFilters req.fullURL
		_write = res.write

		# Prevent headers from being finalized
		_writeHead = res.writeHead

		head_wroted = {}

		res.writeHead = (statusCode, headers) ->
			head_wroted.statusCode = statusCode
			head_wroted.headers = headers

		trumplize = ->
			tr = trumpet()
			for filter in filters
				do (filter) ->
					{selector, map, enabled} = filter
					if enabled
						try
							mapfn = eval "'use strict'; (#{map})"
							tr.selectAll selector, ($elem) ->

								if !!~map.indexOf '$elem'
									mapfn $elem

								else
									is_outer = !!~map.indexOf '$outer'
									ws = $elem.createWriteStream(outer: is_outer)
									concator = concat (str) ->  #Content Stream Collected
										ws.end mapfn str
									$elem.createReadStream(outer: is_outer).pipe concator
						catch
							console.log """
								Map Function of URL #{req.fullURL} Parse Failed \n
								In Selector: #{selector}
							"""
			_end = res.end
			
			lastEncoding = null

			res.write = (data, encoding) ->
				lastEncoding = encoding
				tr.write data, encoding

			res.end = (data, encoding) ->
				# Restore writeHead
				lastEncoding = encoding
				res.writeHead = _writeHead
				tr.end data, encoding

			tr.pipe concat (str) ->
				if head_wroted.headers
					delete head_wroted.headers['Content-Length']

				res.setHeader 'content-length', Buffer.byteLength(str, lastEncoding)
				if head_wroted.statusCode
					_writeHead.call res, head_wroted.statusCode, head_wroted.headers

				_end.call res, str, lastEncoding

				# TODO: or maybe use express' send()
				# res.send str


		res.write = (data) ->
			contType = res.getHeader 'Content-Type' || head_wroted.headers?['Content-Type']
			if contType == 'text/html' or contType == 'text/plain'
				trumplize()
				res.write data
			else
				_write.call res, data # Put back the first chunck of data
				res.write = _write

		next()

		
	else
		next()