cradle = require 'cradle'
conf = require('nconf').file 'config.json'
db = new cradle.Connection(conf.get('dbHost'), conf.get('dbPort'), {
	cache:	true,
	raw:	false
}).database(conf.get('dbName'))


exports.conf = conf
exports.db = db