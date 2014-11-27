define [
  'angular'
  'parse'
], (angular, Parse)->
  angular.module 'controllers.SignupCtrl', []
    .controller 'SignupCtrl', ['$scope', ($scope)->
      $scope.signup = ->
        user = new Parse.User()
        user.set 'username', $scope.username
        user.set 'password', $scope.password
        user.set 'email', $scope.email
        user.set 'emailVerified ', no
        
        user.signUp null, {
          success: (user) ->
            console.log(user)
          error: (user, error) ->
            console.log(user)
            console.log(error)
        }
    ]