db = require('nano')('http://localhost:5984/debug_gate')
urlpattern = require 'url-pattern'
#require pattern match

users = {}

# insert fake data to test trumpet
db.get = (id, callback) ->
	callback null, {
		"_id": "ronhng",
		"_rev": "2-de30add1ef49e14e17d1c05edcc35fef",
		"password": "mypass",
		"rules": [{
			"pattern": "*.cnbeta.com*",
			"host": {
				"ip": "192.168.1.4",
				"enabled": false
			},
			"filters": [{
				"selector": "div",
				"map": "function($outer) { console.log('Hit rule!!'); return 'abc' }",
				"enabled": true
			}, {
				"selector": "#def",
				"map": "function($inner) { return $inner }",
				"enabled": true
			}, {
				"selector": "img[src~=http://...]",
				"map": "function($elem) { $elem.setAttribute('src', 'myimg') }",
				"enabled": false
			}, {
				"selector": "script[src^=...]",
				"map": "function($elem) { $elem.removeAttribute('type') }",
				"enabled": false
			}],
			"swap": {
				"content": "",
				"mime": "text/html",
				"enabled": false
			},
			"rewrite": {
				"map": "function($url, $pattern) {}",
				"enabled": false
			},
			"enabled": true
		}, {
			"pattern": "REGEX:(.*)\\.google\\.com",
			"host": {
				"ip": "192.168.1.4",
				"enabled": true
			},
			"filters": {
				"div#abc": {
					"map": "function($outer) { return $outer }",
					"enabled": true
				},
				"#def": {
					"map": "function($inner) { return $inner }",
					"enabled": true
				},
				"img[src~=http://...]": {
					"map": "function($elem) { $elem.setAttribute('src', 'myimg') }",
					"enabled": true
				},
				"script[src^=...]": {
					"map": "function($elem) { $elem.removeAttribute('type') }",
					"enabled": true
				}
			},
			"swap": {
				"content": "",
				"mime": "text/html",
				"enabled": true
			},
			"rewrite": {
				"map": "function($url, $pattern) {}",
				"enabled": true
			},
			"enabled": true
		}]
	}


module.exports = class User
	###

	@get : (name) ->
		db.get name, (err, body) ->

	@exist: (name, callback) ->
		db.head name, (err, _, headers) ->
			callback !!err

	###

	@getUserFromId: (id, callback) =>
		return callback users[id] if users[id]
		db.get id, (err, body) =>
			return callback null if err
			callback new @(body)

	constructor: (@doc) ->
		@id = @doc._id
		users[@id] = @

	getHost: (url) ->
		rule = @getMatchedRules url
		if rule and rule.host
			return rule.host
		null

	getRewrite: (url) ->
		rule = @getMatchedRules url
		if rule and rule.rewrite
			return rule.rewrite
		null

	getFilters: (url) ->
		console.log "Get filter Request!"
		rule = @getMatchedRules url
		if rule and rule.filters
			return rule.filters
		null

	getSwap: (url) ->
		rule = @getMatchedRules url
		if rule and rule.swap
			return rule.swap
		null

	save: ->
		#not getting rev because only one instance should modify database document
		db.insert @doc, @doc._id, (err, body) =>
			return console.log "Error when saving user: #{err.message}" if err
			@doc._rev = body.rev

	# private
	getMatchedRules: (url) ->
		for rule in @doc.rules
			{pattern} = rule
			if !!~pattern.indexOf 'REGEX'
				pattern = pattern.substring(6)
				try
					if url.match new RegExp(pattern)
						return rule
				catch
					continue
			else
				pattern = urlpattern pattern
				if pattern.match url
					return rule
		null



