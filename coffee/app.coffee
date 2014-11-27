define [
  'angular'
  'angularRoute'
  'controllers/HomeCtrl'
  'controllers/SignupCtrl'
  ], (angular) ->
    app = angular.module 'app', [
      'ngRoute'
      'controllers.HomeCtrl'
      'controllers.SignupCtrl'
    ]
    app.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider)->
      $routeProvider.when '/', {
        templateUrl: '/html/home.html'
        controller: 'HomeCtrl'
      }
      $routeProvider.when '/signup', {
        templateUrl: '/html/signup.html'
        controller: 'SignupCtrl'
      }
      
      $locationProvider.html5Mode
        enabled: yes
        requireBase: false
  ]