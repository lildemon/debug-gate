express = require 'express'
httpProxy = require 'http-proxy'
proxy = new httpProxy.RoutingProxy()
url = require 'url'
{proxyOrNot} = require './lib/proxy'
app = express()


app.use (req, res, next) ->
	#console.log 'getting request'
	req.reqbuf = httpProxy.buffer req

	parsedUrl = url.parse(req.url)
	if port = parseInt(parsedUrl.port)
		req.proxyPort = port

	###if !!~req.url.indexOf('baidu')
		req.proxyHost = '173.194.72.99'###

	###if (proxyOrNot req.url) or true
		#console.log "should proxy: #{req.url}"
		req.proxyHost = '127.0.0.1'
		req.proxyPort = '8118'

	
	req.headers.host = ''
	console.log req.headers###

	proxy.proxyRequest req, res,
		host: req.proxyHost || req.host
		port: req.proxyPort || 80
		buffer: req.reqbuf
		enable:
			xforward: false

app.listen 8338