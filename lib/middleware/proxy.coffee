httpProxy = require 'http-proxy'
proxy = new httpProxy.RoutingProxy()
url = require 'url'

exports.bufferMiddleware = (req, res, next) ->
	req.reqbuf = httpProxy.buffer req
	next()

exports.middleware = (req, res, next) ->

	#process hosts
	if host = req.user?.getHost(req.url)
		req.proxyHost = host
	parsedUrl = url.parse(req.url)
	if port = parseInt(parsedUrl.port)
		req.proxyPort = port



	proxy.proxyRequest req, res,
		host: req.proxyHost || req.host
		port: req.proxyPort || 80
		buffer: req.reqbuf