@app = angular.module('app', [
  'ngRoute'
])

@app.config ($routeProvider) ->
  $routeProvider.when('/signup',
    templateUrl: '/html/angular/views/user/signup.html'
  )
  .otherwise redirectTo: '/'
