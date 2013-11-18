{conf, db} = require './utils'
`
var wildcardToRegexp = function wildcardToRegexp(pattern) {
    pattern = pattern.replace(/([\\\+\|\{\}\[\]\(\)\^\$\.#])/g, "\\$1");
    pattern = pattern.replace(/\*/g, ".*");
    pattern = pattern.replace(/\?/g, ".");
    return pattern;
};
`

attachName = 'attach'

# TODO： 需要添加情景的支持， 以及整个情景的触发条件
# 情景包括HOSTS和RULES

Rule = module.exports = class

	@create: (doc, callback) ->
		doc['type'] = 'rule'
		db.save doc, (err, res) ->
			return callback null if err
			doc['_id'] = res['id']
			callback new Rule(res['id'], doc)

	@remove: (id, callback) ->
		db.remove id, callback

	

	constructor: (@id, @doc) ->

	getId: ->
		@id

	isPatternMatch: (url) ->
		return false unless @doc['enabled']
		pattern = @doc['url_pattern']
		if !!~pattern.indexOf 'REGEX'
			pattern = pattern.substring(6)
		else
			pattern = wildcardToRegexp(pattern)
		try
			if url.match new RegExp(pattern)
				return true
		catch
			return false

	getSwap: (callback) -> # {mime, charset, content}
		@getAttachment (reply) =>
			return callback null unless reply
			callback
				mime: @doc['swap']['mime']
				charset: @doc['swap']['charset']
				content: reply.body.toString()	# Currently support utf-8 only

	getRewrite: (url) ->
		# TODO: Map url and template replace support
		@doc['rewrite']

	filter: ($) ->
		for filter in @doc['filters']
			# TODO: regex_map support
			$(filter['selector']).html filter['replace_with']
		$


	remove: (callback) ->
		db.remove @id, callback

	updataAttachment: (callback, str, contType)->
		db.saveAttachment @id,
			'name': 			attachName,
			'Content-Type':		contType
			'body':				str
		, callback


	getAttachment: (callback) ->
		db.getAttachment @id, attachName, (err, reply) ->
			return callback null if err
			callback reply

	#private
	




