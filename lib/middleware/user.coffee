db = require('nano')('http://localhost:5984/debug_gate')

class User
	@get : (name) ->
		db.get name, (err, body) ->

	@exist: (name, callback) ->
		db.head name, (err, _, headers) ->
			callback !!err


exports.middleware = (req, res, next) ->


