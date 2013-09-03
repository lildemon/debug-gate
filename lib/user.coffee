db = require('nano')('http://localhost:5984/debug_gate')
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

	getRewrite: (url) ->

	getFilters: (url) ->

	save: ->
		#not getting rev because only one instance should modify database document
		db.insert @doc, @doc._id, (err, body) =>
			return console.log "Error when saving user: #{err.message}" if err
			@doc._rev = body.rev




