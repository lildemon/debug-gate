db = require('nano')('http://localhost:5984/debug_gate')
#urlpattern = require 'url-pattern'
`
var wildcardToRegexp = function wildcardToRegexp(pattern) {
    pattern = pattern.replace(/([\\\+\|\{\}\[\]\(\)\^\$\.#])/g, "\\$1");
    pattern = pattern.replace(/\*/g, ".*");
    pattern = pattern.replace(/\?/g, ".");
    return pattern;
};
`
#require pattern match

users = {}
rulesCache = {}

# insert fake data to test
path = require 'path'
jf = require 'jsonfile'
fs = require 'fs'

initobj = jf.readFileSync(path.resolve(__dirname, '../store.json'))

db.get = (id, callback) ->
	callback null, jf.readFileSync(path.resolve(__dirname, "../#{id}.json"));

db.insert = (obj, id) ->
	jf.writeFileSync(path.resolve(__dirname, "../#{id}.json"), obj);


module.exports = class User
	###

	@get : (name) ->
		db.get name, (err, body) ->

	@exist: (name, callback) ->
		db.head name, (err, _, headers) ->
			callback !!err

	###

	@getUserFromId: (id, callback) =>
		console.log "GetFrom ID: #{id}"
		return callback users[id] if users[id]

		storepath = path.resolve(__dirname, "../#{id}.json");
		fs.exists storepath, (exist) =>
			unless exist
				initobj['_id'] = id
				jf.writeFileSync storepath, initobj

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

	getFilter: (url) ->
		rule = @getMatchedRules url
		if rule and rule.filter
			return rule.filter
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

	saveRules: (rules) ->
		@doc.rules = rules
		@save()

	getRules: ->
		@doc.rules

	# private
	getMatchedRules: (url) ->
		for rule in @doc.rules
			if rule.enabled
				{pattern} = rule
				if !!~pattern.indexOf 'REGEX'
					pattern = pattern.substring(6)
				else
					pattern = wildcardToRegexp(pattern)
				try
					if url.match new RegExp(pattern)
						return rule
				catch
					continue
		null



