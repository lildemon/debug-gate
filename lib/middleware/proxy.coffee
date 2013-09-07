httpProxy = require 'http-proxy'
proxy = new httpProxy.RoutingProxy()
url = require 'url'
{proxyOrNot} = require '../proxy'

# TODO: https 双向代理的实现。。套用的逻辑应该基本一样 只是加上了SSl协议

proxy.on 'proxyError', (err, req, res) ->
	# TODO: Invock Express' Error Handling method
	console.log "Proxy Error Catched for url: #{req.originalUrl}"
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

exports.wsMiddleware = (req, socket, head) ->
	console.log 'Reciving UPGRADE Request'
	socket.on 'error', (err) ->
		console.log "WebSocket error occured!"
	proxy.proxyWebSocketRequest req, socket, head

exports.middleware = (req, res, next) ->

	# req.url is value of HTTP request GET or POST /<param>
	# When browser request using http proxy, this will include full host part
	# But we need host part always
	{fullURL} = req
	parsedUrl = url.parse(fullURL)

	# TODO: loop detection get Gate's linsten port from config
	# console.log "parsedUrl is: #{JSON.stringify(parsedUrl)}, \n req.url is: #{req.url}"
	if parsedUrl.port is "8388" and req.url.substring(0, 1) is '/'
		return next('检测到可能存在的请求循环（Gate请求Gate自己)，如不明确，请联系管理员')


	#process hosts
	if (host = req.user?.getHost(fullURL)) and host.enabled
		req.proxyHost = host

	
	if port = parseInt(parsedUrl.port)
		req.proxyPort = port

	# Then rewrite rules
	b_changeOrigin = false
	if (rewrite = req.user?.getRewrite(fullURL)) and rewrite.enabled
		try
			do ->
				mapfn = eval "'use strict'; (#{rewrite.map})"
				fullURL = req.url = mapfn fullURL
				parsedUrl = url.parse fullURL
				req.proxyHost = req.rewriteHost = parsedUrl.hostname
				req.proxyPort = parsedUrl.port || req.proxyPort
				b_changeOrigin = true
		catch
			console.log """
				Rewrite function of URL #{req.originalUrl} Parse Failed.
			"""



	# Rewrite rule currently bypass gfw service
	if !req.proxyHost and (proxyOrNot fullURL) and false # TODO: gfw currently disabled
		# TODO: Use Configuration from database
		req.proxyHost = '127.0.0.1'
		req.proxyPort = '8118'
		# TODO: In specification should proxy preserve host part of path?

		###
		# this will be opened only if rewrite rule going through gfw either
		# changeOrigin in here won't work because now origin is 127.0.0.1 which is not what we espected
		if req.rewriteHost
			b_changeOrigin = false
			req.headers.host = "#{parsedUrl.hostname}:#{parsedUrl.port||80}"
		###

	else 
		# patch for http-proxy path err
		# http-proxy assumes req.url only has 'path' part, just as reverse proxy assumes
		# But if going through gfw, then it's exact behavior we want. in this case browser and we both use forward proxy anyway.
		req.url = parsedUrl.path

	# Trigger Node.js client request keep-alive
	unless req.headers['Connection']
		#console.log "No 'Connection header'"
		req.headers['Connection'] = 'keep-alive'

	proxy.proxyRequest req, res,
		host: req.proxyHost || req.host
		port: req.proxyPort || 80
		buffer: req.reqbuf
		enable:
			xforward: true
		changeOrigin: b_changeOrigin