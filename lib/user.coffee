db = require('nano')('http://localhost:5984/debug_gate')
urlpattern = require 'url-pattern'
#require pattern match

users = {}

class User
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
		for rule in @doc rules
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



