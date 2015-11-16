@app = angular.module('app', [
  'ngRoute'
])

@app.config ($routeProvider) ->
  $routeProvider.when('/signup',
    templateUrl: '/html/angular/views/user/signup.html'
  )
  $routeProvider.when('/signin',
    templateUrl: '/html/angular/views/user/signin.html'
  )
  $routeProvider.when('/',
    templateUrl: '/html/angular/views/home.html'
  )
  .otherwise redirectTo: '/'
