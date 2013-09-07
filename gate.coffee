require 'coffee-script'
express = require 'express'
gateapp = express()
url = require 'url'

gateapp.configure ->
	gateapp.use (req, res, next) ->
		req.fullURL = req.protocol + "://" + req.get('host') + url.parse(req.url).path;
		next()
	###
	gateapp.use (req, res, next) ->
		res.on 'header', ->
    		console.trace('HEADERS GOING TO BE WRITTEN')
  
  			next();
  	###
	gateapp.use require('./lib/middleware/proxy').bufferMiddleware
	gateapp.use require('./lib/middleware/user_manager').middleware
	gateapp.use require('./lib/middleware/swap').middleware
	gateapp.use require('./lib/middleware/filter').middleware
	gateapp.use require('./lib/middleware/proxy').middleware


gatesrv = gateapp.listen 8388

gatesrv.on 'connect', require('./lib/middleware/https').middleware
gatesrv.on 'upgrade', require('./lib/middleware/proxy').wsMiddleware
console.log "Gate Started on port 8388"


adminapp = express()
adminapp.configure ->
	adminapp.use express.cookieSession()
	# bodyparser

# TODO: Route reconfigure, using dependency inject etc..
adminapp.get '/', (req, res, next) ->
	unless req.session?.user
		return res.redirect '/login'

	# 进入配置界面
	# db.get 'document'

adminapp.get '/login', (req, res, next) ->

adminapp.post '/auth', (req, res) ->
	# Need bodyparser
	{id, pw} = req.params
	User.auth id, pw, (err, user) ->
		if err
			return res.end """
				<h1>用户明或者密码错误 <a href="javascript:history.back()">返回</a>重新登录</h1>
			"""
		req.session.user = user
		res.redirect '/bind-ip'

adminapp.get '/bind-ip', (req, res) ->
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