db = require('nano')('http://localhost:5984/debug_gate')

map = {}

# Fake data to test trumpet
#map['127.0.0.1'] = 
#	user: 'ronhng'

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
	console.log "当前用户IP是: #{ip}"
	unless map[ip]?
		map[ip] =
			user: ip.split('.').join('') + 'store'
	if typeof map[ip] is "undefined"
		fetchIp ip, ->
			if map[ip]
				callback? map[ip].user
			else
				callback? null
	else
		callback? map[ip]?.user

