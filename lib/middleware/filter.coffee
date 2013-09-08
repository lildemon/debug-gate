trumpet = require 'trumpet'
concat = require 'concat-stream'
zlib = require 'zlib'

exports.middleware = (req, res, next) ->
	if req.user?
		console.log "user exist!"

	if filters = req.user?.getFilters req.fullURL

		console.log 'GET FILTER SUCCESS!'

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

		trumplize = ->
			streamer = tr = trumpet()
			if (res.getHeader 'Content-Encoding') is 'gzip'
				console.log "Creating gzip Streamer"
				streamer = zlib.createGunzip()
				streamer.pipe(tr)
			for filter in filters
				do (filter) ->
					{selector, map, enabled} = filter
					if enabled
						try
							mapfn = eval "'use strict'; (#{map})"
							tr.selectAll selector, ($elem) ->
								console.log "Element select occured"
								if !!~map.indexOf '$elem'
									mapfn $elem

								else
									is_outer = !!~map.indexOf '$outer'
									#console.log "ISOUTER? #{is_outer} #{JSON.stringify($elem)}"
									
									
									concator = concat (str) ->  #Content Stream Collected
										#console.log str
										console.log "Inner or outer map function"
										result = if str? then str.toString() else ''
										result = mapfn result
										#result = mapfn str.toString()
										elstream.end result

									elstream = $elem.createStream(outer: is_outer)
									elstream.pipe concator
									
									

						catch
							console.log """
								Map Function of URL #{req.fullURL} Parse Failed \n
								In Selector: #{selector}
							"""
			
			
			first_write = false
			res.write = (data) ->
				console.log "Trumpet res.write"
				unless first_write
					first_write = true
					res.removeHeader 'content-encoding'
					res.removeHeader 'content-length'
					res.type 'html'
					_writeHead.call res, head_wroted.statusCode or 200

				streamer.write data

			res.end = (data, encoding) ->
				
				res.writeHead = _writeHead
				res.end = _end
				res.write = _write
				streamer.end data


			###
			tr.pipe concat (buf) ->

				
				#if head_wroted.headers
				#	delete head_wroted.headers['Content-Length']
				#	delete head_wroted.headers['Content-Encoding']
				

				# We don't have encoding anymore and length won't match
				


				if head_wroted.statusCode
					console.log "Have Status!"
					res.send head_wroted.statusCode, buf
				else
					console.log "Data gathered call send"
					res.send buf
			

			###
			tr.on 'data', (data) ->
				_write.call res, data

			tr.on 'end', (data) ->
				_end.call res, data
			


		write_called = false

		res.write = (data, encoding) ->
			write_called = true

			contType = res.getHeader 'Content-Type' || head_wroted.headers?['Content-Type']
			if !!~contType.indexOf('text/html') or !!~contType.indexOf('text/plain')
				
				trumplize()
				res.write data, encoding
			else
			
				writeHeadBack()
				res.write = _write
				res.end = _end
				res.write data, encoding # Put back the first chunck of data
				


		res.end = (data, encoding) ->
			unless write_called
				console.log "End Called Directly"
				res.write = _write
				res.end = _end
				writeHeadBack()
				res.end data
			else
				throw "In Filter Middleware: Custom res.end called."


		next()

		
	else
		next()