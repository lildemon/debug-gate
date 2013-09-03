db = require('nano')('http://localhost:5984/debug_gate')

map = {}

fetchIp = (ip, callback) ->
	db.get ip, (err, body) ->
		if err then map[ip] = null else map[ip] = body
		callback?()

exports.setUserForIp = (ip, user, callback) ->
	#map[ip] = user
	#if typeof map[ip] is "undefined"
	fetchIp ip, ->
		if map[ip]
			map[ip].user = user
		else
			map[ip] =
				_id: ip
				user: user
		db.insert map[ip], ip, (err, body, header) ->
			throw 'Saving IP Mapping data Failed, Data is inconsistent' if err
			map[ip]._rev = body.rev
			callback?()


exports.getUserForIp = (ip, callback) ->
	if typeof map[ip] is "undefined"
		fetchIp ip, ->
			if map[ip]
				callback? map[ip].user
			else
				callback? null
	else
		callback? map[ip].user

