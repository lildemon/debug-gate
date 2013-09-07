trumpet = require 'trumpet'
concat = require 'concat-stream'


exports.middleware = (req, res, next) ->
	if req.user?
		console.log "user exist!"

	if filters = req.user?.getFilters req.fullURL

		console.log 'GET FILTER SUCCESS!'

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
								console.log "Element select occured"
								if !!~map.indexOf '$elem'
									mapfn $elem

								else
									is_outer = !!~map.indexOf '$outer'
									#console.log "ISOUTER? #{is_outer} #{JSON.stringify($elem)}"
									
									
									concator = concat (str) ->  #Content Stream Collected
										console.log str
										console.log "Inner or outer map function"
										elstream.end mapfn str.toString()

									elstream = $elem.createStream(outer: is_outer)
									elstream.pipe concator
									
									

						catch
							console.log """
								Map Function of URL #{req.fullURL} Parse Failed \n
								In Selector: #{selector}
							"""
			_end = res.end
			
			lastEncoding = null

			res.write = (data, encoding) ->
				console.log "Trumpet initialized and processing data"
				#console.log data
				lastEncoding = encoding
				tr.write '<div>data</div><a />##', 'utf-8'

			res.end = (data, encoding) ->
				# Restore writeHead
				console.log "On recieving res.end"
				lastEncoding = encoding
				res.writeHead = _writeHead
				tr.end 'data', 'utf-8'

			tr.pipe concat (buf) ->
				console.log 'Result concated'
				#console.log str = str.toString()

				if head_wroted.headers
					delete head_wroted.headers['Content-Length']
					delete head_wroted.headers['Content-Encoding']
				res.removeHeader 'content-encoding'
				res.removeHeader 'content-length'
				###
				console.log "Before: " + buf
				res.setHeader 'content-length', buf.length
				console.log "After: " + buf
				
				#if head_wroted.statusCode
				#	_writeHead.call res, head_wroted.statusCode, head_wroted.headers
				###
				res.end = _end
				res.write = _write
				


				if head_wroted.statusCode
					console.log "Have Status!"
					res.send head_wroted.statusCode, buf
				else
					res.send buf

				


				
				#res.end str

				#_end.call res, str, lastEncoding
				#console.log str
				#res.send str

				# TODO: or maybe use express' send()
				# res.send str


		res.write = (data, encoding) ->
			contType = res.getHeader 'Content-Type' || head_wroted.headers?['Content-Type']
			if contType == 'text/html' or contType == 'text/plain'
				trumplize()
				res.write data, encoding
			else
				_write.call res, data, encoding # Put back the first chunck of data
				res.write = _write

		next()

		
	else
		next()