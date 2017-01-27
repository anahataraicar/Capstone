(function() {
  "use strict";

  angular.module("app").controller("capstoneCtrl", function($scope){
  	// $scope.message = 'Welcome'
  	window.$scope= $scope; //helps to debug
    // $scope.task= 'task' //this grabs the task model from the html and sets it to whatever you want the inout box to display
  	$scope.messages=["Hello"]
  	console.log{messages};
    

  })
  	

}());


