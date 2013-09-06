User = require '../user'
ipmap = require '../ipmap'


exports.middleware = (req, res, next) ->
	#Based on IP Binding, attach userinfo
	#Then use the rest of middleware to do the job
	
	ipmap.getUserForIp req.ip, (user_id) ->
		if user_id
			User.getUserFromId user_id, (user) ->
				req.user = user if user
				next()
		next()

