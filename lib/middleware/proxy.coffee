httpProxy = require 'http-proxy'
proxy = new httpProxy.RoutingProxy()
url = require 'url'
{proxyOrNot} = require '../proxy'

proxy.on 'proxyError', (err, req, res) ->
	console.log "Proxy Error Catched for url: #{req.url}"
	if res._header
		res.destroy()
	else
		res.writeHead(500, { 'Content-Type': 'text/html' });
		#res.end('An error has occurred: ' + JSON.stringify(err))
		res.end """
			<!DOCTYPE html>
			<html>
				<head><meta charset="UTF-8" /><title>网关出错了</title></head>
				<body>
					<h1>我就素Front-Gate!</h1>
					<h2>网关出错了</h2>
					<p>你所访问的地址： #{req.originalUrl} 不存在或暂时无法访问</p>
					<p>尝试加入代理规则并重新访问一次</p>
					<dl>
						<dt>错误信息</dt>
						<dd>
							#{JSON.stringify(err)}
						</dd>
					</dl>
				</body>
			</html>
		"""


exports.bufferMiddleware = (req, res, next) ->
	req.reqbuf = httpProxy.buffer req
	next()

exports.middleware = (req, res, next) ->

	#process hosts
	if host = req.user?.getHost(req.url)
		if host.enabled
			req.proxyHost = host

	parsedUrl = url.parse(req.url)
	if port = parseInt(parsedUrl.port)
		req.proxyPort = port

	if rewrite = req.user?.getRewrite(req.url) and rewrite.enabled
		try
			do ->
				mapfn = eval "'use strict'; (#{rewrite.map})"
				req.url = mapfn req.url
				parsedUrl = url.parse req.url
				req.proxyHost = req.rewriteHost = parsedUrl.hostname
				req.proxyPort = url.parse(req.url).port || req.proxyPort
		catch
			console.log """
				Rewrite function of URL #{req.url} Parse Failed.
			"""

	# Rewrite rule currently bypass gfw service
	if !req.proxyHost and proxyOrNot req.url
		# TODO: Use Configuration from database
		req.proxyHost = '127.0.0.1'
		req.proxyPort = '8118'
		# TODO: In specification should proxy preserve host part of path?
	else 
		#patch for http-proxy path err
		req.url = parsedUrl.path


	proxy.proxyRequest req, res,
		host: req.proxyHost || req.host
		port: req.proxyPort || 80
		buffer: req.reqbuf
		enable:
			xforward: false
		changeOrigin: !!req.rewriteHost