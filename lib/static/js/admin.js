var admin = angular.module('admin', ['ui.bootstrap'])

admin.controller('userController', function($scope, $http) {
	// get data

	$scope.rules =  [{
		"pattern": "*.cnbeta.com/*",
		"host": {
			"ip": "192.168.1.4",
			"enabled": false
		},
		"filter": {
			"map": "function($){$('a').text('荣荣'); }",
			"enabled": true
		},
		"swap": {
			"content": "abc",
			"mime": "text/html",
			"enabled": false
		},
		"rewrite": {
			"map": "function($url) { return 'http://www.91.com/' }",
			"enabled": true
		},
		"enabled": true
	}, {
		"pattern": "REGEX:(.*)\\.google\\.com",
		"host": {
			"ip": "207.97.227.245",
			"enabled": false
		},
		"filter": {
			"map": "function($){$('title').text('荣荣')}"
		},
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
	}];

	$scope.insertBefore = function() {

	};

	$scope.printRules = function(index) {
		if(index) {
			console.log(angular.toJson($scope.rules[index]));
		} else {
			console.log(angular.toJson($scope.rules));
		}
		
	};
});