exports.middleware = (req, res, next) ->
	if swap = req.user?.getSwap(req.url) and swap.enabled
		if swap.mime
			res.setHeader "Content-Type", swap.mime
		res.send swap.content
	else
		next()