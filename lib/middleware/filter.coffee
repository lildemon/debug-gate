trumpet = require 'trumpet'

exports.middleware = (req, res, next) ->
	if req.user?.getFilters req.url
		#rewrite res.write and res.end
	else
		next()