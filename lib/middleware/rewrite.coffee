request = require 'request'

exports.middleware = (req, res, next) ->
	if result = req.user?.getRewrite(req.url)
		#req.method
		request.get() #or post, whatever 暂时实现GET