@app = angular.module('app', [
  'ngRoute'
  'ngMessages'
  'ui.bootstrap'
])

@app.config ($routeProvider) ->
  $routeProvider.when('/signup',
    templateUrl: '/html/angular/views/user/signup.html'
    controller: 'signUpCtrl'
  )
  $routeProvider.when('/signin',
    templateUrl: '/html/angular/views/user/signin.html'
    controller: 'signInCtrl'
  )
  $routeProvider.when('/post:id',
    templateUrl: '/html/angular/views/post/show.html',
    controller: 'PostDetailController'
  )
  $routeProvider.when('/admin',
    templateUrl: '/html/angular/views/admin/post/list.html'
  )
  $routeProvider.when('/posts/create',
    templateUrl: '/html/angular/views/admin/post/create.html'
  )
  $routeProvider.when('/',
    templateUrl: '/html/angular/views/home.html'
  )
  .otherwise redirectTo: '/'

@app.controller 'PostController', [
  '$scope'
  ($scope) ->
    posts = [
        { id: 1, filename: "kittens_1.jpg" }
        { id: 2, filename: "sweets_1.jpg" }
        { id: 3, filename: "kittens_2.jpg" }
        { id: 4, filename: "sweets_2.jpg" }
        { id: 5, filename: "kittens_3.jpg" }
        { id: 6, filename: "sweets_3.jpg" }
        { id: 7, filename: "kittens_4.jpg" }
        { id: 8, filename: "sweets_4.jpg" }
        { id: 9, filename: "kittens_5.jpg" }
        { id: 10, filename: "sweets_5.jpg" }
    ]

    $scope.posts = posts
    return
]

@app.controller 'PostDetailController', [
  '$scope'
  ($scope) ->
    $scope.filename = "kittens_1.jpg"
    $scope.title = 'My post title'
    $scope.tags = 'Red White Brown Blue-eyes'
    $scope.description = 'My post description'
    $scope.author = 'Dimitri'
    $scope.datetime = '11/04/2015 - 22h20'
    return
]
