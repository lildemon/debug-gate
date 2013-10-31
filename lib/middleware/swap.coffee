exports.middleware = (req, res, next) ->
	if (swap = req.user?.getSwap(req.fullURL)) and swap.enabled
		if swap.mime
			res.setHeader "Content-Type", swap.mime + "; charset=utf-8"
			#res.charset = 'utf-8'
		res.send swap.content
	else
		next()