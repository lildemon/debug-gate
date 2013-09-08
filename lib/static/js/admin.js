Array.prototype.move = function (old_index, new_index) {
    if (new_index >= this.length) {
        var k = new_index - this.length;
        while ((k--) + 1) {
            this.push(undefined);
        }
    }
    this.splice(new_index, 0, this.splice(old_index, 1)[0]);
    return this; // for testing purposes
};

var admin = angular.module('admin', ['ui.bootstrap'])

admin.controller('userController', function($scope, $http) {
	// get data

	$http.get('/rules').success(function(data){
		$scope.rules = data;
	});

	function getDefaultRule() {
		return angular.copy({
			pattern: 'www.example.com',
			enabled: true,
			host: {
				ip: '1.2.3.4',
				enabled: false
			},
			filter: {
				map: "function($) {  }",
				enabled: false
			},
			swap: {
				content: '替换内容',
				mime: 'text/html',
				enabled: false
			},
			rewrite: {
				map: "function($url){  }",
				enabled: false
			}
		});
	}

	$scope.insertBefore = function() {

	};

	$scope.newRule = function() {
		$scope.rules.push(getDefaultRule());
	};

	$scope.moveUp = function(index) {
		if(index <= 0) return;
		$scope.rules.move(index, index - 1);
	};

	$scope.moveDown = function(index) {
		if(index >= $scope.rules.length - 1) return;
		$scope.rules.move(index, index + 1);
	};

	$scope.removeRule = function(index) {
		$scope.rules.splice(index, 1);
	};

	$scope.saveRules = function() {
		$http.post('/saverules', angular.toJson($scope.rules)).success(function(){
			alert('保存规则成功');
		});
	};

	$scope.printRules = function(index) {
		if(index) {
			console.log(angular.toJson($scope.rules[index]));
		} else {
			console.log(angular.toJson($scope.rules));
		}
		
	};
});