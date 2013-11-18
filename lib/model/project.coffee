resourceful = require 'resourceful'


matchingCache = {} # break the cache when reorder, modify rules

Project = module.exports = resourceful.define 'project', ->
	@string 'description',
		required: true

	@string 'host_prefix',
		required: true

	@array 'alt_hosts',
		items:
			type: 'string'



Project.exist = (name, callback) ->
	Project.get name, (err, project) ->
		callback Boolean err

Project.getMatchedRule = (url) ->		