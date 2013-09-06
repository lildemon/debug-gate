express = require 'express'
httpProxy = require 'http-proxy'
proxy = new httpProxy.RoutingProxy()
url = require 'url'
{proxyOrNot} = require './lib/proxy'
app = express()
http = require 'http'

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


app.use (req, res, next) ->
	#console.log 'getting request'
	req.reqbuf = httpProxy.buffer req

	parsedUrl = url.parse(req.url)
	if port = parseInt(parsedUrl.port)
		req.proxyPort = port


	if true
		###if !!~req.url.indexOf('baidu')
			req.proxyHost = '173.194.72.99'###
		
		if (proxyOrNot req.url) or !!~req.url.indexOf('qq') or !!~req.url.indexOf('bit.ly')
			console.log "should proxy: #{req.url}"
			req.proxyHost = '127.0.0.1'
			req.proxyPort = '8118'
		else
			#patch for http-proxy path err
			req.url = parsedUrl.path


		

		console.log "Requesting: #{req.originalUrl}"
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

	if false

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

	if false
		proxy.proxyRequest req, res,
			host: '127.0.0.1'
			port: 8118
			buffer: req.reqbuf
			###target:
				agent: agent###
			enable:
				xforward: false

	if false

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



server = app.listen 8338

server.on 'upgrade', (req, socket, head) ->
	console.log 'Reciving UPGRADE Request'
	proxy.proxyWebSocketRequest req, socket, head

server.addListener 'connect', require './https-proxy'

