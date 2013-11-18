{conf, db} = require './utils'
Rule = require './rule'

projCache = {}

Project = exports.Project = class

	@get: (name, callback) ->
		if projCache[name]?
			return callback(projCache[name])
		db.get "project:#{name}", (err, proj) ->
			if err
				return callback(null)
			project = new Project(name, proj)
			projCache[name] = project
			callback project

	@create: (name, doc, callback) ->
		db.save "project:#{name}", doc, (err, res) =>
			return callback null if err
			@get name, callback


	constructor: (@name, @doc) ->
		@id = "project:#{@name}"
		

	getRules: (callback) ->
		if @rules?.length
			callback @rules
		else
			@_initRules callback

	newRule: (doc, callback) ->
		Rule.create doc, (rule) =>
			return callback null unless rule
			@doc['associated_rules'].push rule.getId()
			@_update (err, res) ->
				callback rule

	updateProject: (doc, callback) ->
		@_updateRules doc['rules'],  (err, res) =>
			return callback err if err
			@_merge doc, callback



	remove: (callback) ->
		# async remove each rule in rule list
		db.remove @id, callback
		delete projCache[@name]



	# private
	_save: (callback) -> # save document if it is created in memory
		db.save @id, @doc, callback

	_update: (callback) ->
		@merge @doc, callback

	_merge: (doc, callback) ->
		db.merge @id, doc, (err, res) =>
			unless err
				@doc['_rev'] = res['rev']
			@rules = []
			db.get @id, (err, res) =>
				@doc = res unless err
				callback(err, res)

	_initRules: (callback) -> # if rules list changed, this should be called
		db.get @doc.rules, (err, res) =>
			return callback(null) if err
			@rules = []
			res.forEach (res_obj, idx) =>
				if res_obj['error']
					console.log "Missing rule for project \"#{@name}\""
					return true
				rule = new Rule(res_obj['doc']['_id'], res_obj['doc'])
				@rules.push rule
			callback @rules

	_updateRules: (rulesList, callback) ->
		pendingRemove = []
		@doc['associated_rules'].forEach (id, idx) ->
			remove_this = true
			rulesList.forEach (rule_id) ->
				if id is rule_id
					remove_this = false
					return false
			if remove_this
				pendingRemove.push id

		pendingRemove.forEach (id) ->
			Rule.remove id, ->

		@doc['associated_rules'] = rulesList
		@_update callback




exports.middleware = (req, res, next) ->
	#project request, can be inside of vhost
	proj_name = req.host.split('.')[0]
	Project.get proj_name, (proj) ->
		unless proj
			return next "TMUED MESSAGE: \n Project #{proj_name} can't be found, create it first!"
		proj.heartBeat() # active project in order to watch fs event, after period of time, watcher will stop
		req.project = proj
		next()
