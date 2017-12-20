// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require bootstrap
//= require angular
//= require turbolinks
//= require_tree .

var app = angular.module('app', []);
app.controller('ApplicationController', function(){

});

app.controller('ClientsController', ['$http', '$log', function($http, $log){
    var code7even = this;
    code7even.members || [];

    $http({
        url: 'api/v1/clients.json',
        method: 'GET'
    }).then(function (response){
      code7even.members = response.data
      console.log(response.data);
    }).then(function (error){
      console.log(error);
    })
}]);

app.controller("MembersController", ['$http', '$log', function($http, $log){
   var code7even = this;
   code7even.members || [];

   $http({
     url: 'api/v1/members.json',
     method: 'GET'
   }).then(function (response){
     code7even.members = response.data;
     console.log(response.data);
  }).then(function (error){
     console.log(error);
  });
}]);

app.controller('ServicesController', ['$http', '$log', function($http, $log){
  var code7even = this;
  code7even.members || [];

  $http({
    url: 'api/v1/services.json',
    method: 'GET'
  }).then(function (response){
    code7even.services = response.data;
    console.log(response.data);
  }).then(function (error){
    console.log(error);
  });
}]);
