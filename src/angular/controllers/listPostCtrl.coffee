@app.controller 'listPostCtrl', [
  '$scope'
  ($scope) ->
    posts = [
        {
          id: 1,
          filename: "kittens_1.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 2,
          filename: "sweets_1.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 3,
          filename: "kittens_2.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 4,
          filename: "sweets_2.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 5,
          filename: "kittens_3.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 6,
          filename: "sweets_3.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 7,
          filename: "kittens_4.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 8,
          filename: "sweets_4.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 9,
          filename: "kittens_5.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
        {
          id: 10,
          filename: "sweets_5.jpg",
          title: 'My post title',
          tags: 'Red White Brown Blue-eyes',
          description: 'My post description',
          author: 'Dimitri',
          datetime: '11/04/2015',
          published: true
        }
    ]

    $scope.posts = posts
    return
]
