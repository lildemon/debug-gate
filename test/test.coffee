
db = require('nano')('http://localhost:5984/debug_gate')
express = require 'express'
proxy = new (require 'http-proxy').RoutingProxy()
gate = express()

gate.configure ->
	gate.use (req, res, next) ->
		#if req.proxyreq
		proxy.proxyRequest req, res,
			host: 'www.google.com'
	gate.use gate.router

gate.get '/', (req, res, next) ->
	#next()

	db.get 'ronhng', (err, body) ->
		if err then res.end err.toString() else res.end JSON.stringify(body)
		#res.end body

	#res.end 'hello world!'

gate.listen 3322



ipmap = require './lib/ipmap'

admin = express()

admin.configure ->
	admin.use express.cookieSession()
	#session
	#body parser()

admin.get '/', (req, res, next) ->
	unless req.session?.user
		return res.redirect('/login')

	# 配置界面逻辑

	db.get 'abc', (err, body) ->
		if err
			res.end 'err occured: ' + err.message + JSON.stringify(err) + JSON.stringify(body)

admin.get '/login', (req, res, next) ->
	#登录界面

admin.post '/auth', (req, res) ->
	{id, pw} = req.params
	User.auth id, pw, (err, user) ->
		if err
			return res.end """
				<h1>用户明或者密码错误 <a href="javascript:history.back()">返回</a>重新登录</h1>
			"""
		
		req.session.user = user
		res.redirect '/bind-ip'


admin.get '/bind-ip', (req, res) ->
	if user = req.session?.user
		ipmap.getUserForIp req.ip, (name) ->
			if user.getUserName() is name
				# 这里可以提供解绑和绑定功能，但是目前只是简单的重新绑定
			else
				#绑定
				ipmap.setUserForIp(req.ip, user.getUserName())
			res.redirect('/')

	else
		res.redirect '/login'

admin.listen 3323