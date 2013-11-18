resourceful = require 'resourceful'
Project = require './project'

Rule = module.exports = resourceful.define 'rule', ->
	@parent 'Project'

	@string 'url_pattern'
	@string 'url_mapper'
	@bool 'enabled'
	@string 'description'
	@array 'filters',
		items:
			type: 'object'
			properties:
				selector:
					type: 'string'
				regex_map:
					type: 'string'
				replace_with:
					type: 'string'
	@string 'url_rewrite'
	@object 'swap',
		properties:
			mime: 		'string',
			charset: 	'string',
			have_swap: 	'boolean'
