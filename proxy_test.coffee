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


	if false
		###if !!~req.url.indexOf('baidu')
			req.proxyHost = '173.194.72.99'###
		console.log 'proxy'
		if (proxyOrNot req.url) or true
			#console.log "should proxy: #{req.url}"
			req.proxyHost = 'localhost'
			req.proxyPort = '8118'


		#patch for http-proxy path err
		req.url = parsedUrl.path
		req.headers.host = 'localhost'

		proxy.proxyRequest req, res,
			host: req.proxyHost || req.host
			port: req.proxyPort || 80
			buffer: req.reqbuf
			###target:
				hostname: parsedUrl.hostname###
			enable:
				xforward: false

	###else if false
		SocksAgent = require('socksified').SocksAgent;
		SocksAgent = new SocksAgent
			socks_host: '127.0.0.1'
			socks_port: 7070###

	if true

		{S5Agent} = require 'socks5-http-client'
		agent = new S5Agent
			socksPort: 7070
			socksHost: '127.0.0.1'
		console.log agent

		proxy.proxyRequest req, res,
			host: req.proxyHost || req.host
			port: req.proxyPort || 80
			buffer: req.reqbuf
			target:
				agent: agent
			enable:
				xforward: false

	else

		req.proxyHost = '192.168.254.66'
		console.log 'request'


		proxy.proxyRequest req, res,
			host: req.proxyHost || req.host
			port: req.proxyPort || 80
			buffer: req.reqbuf
			###target:
				#hostname: parsedUrl.hostname###
			enable:
				xforward: false

app.listen 8338