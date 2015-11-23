module.exports =

  # GET /sign_in
  index: ( req, res ) ->
    res.send('sessions#index')

  # POST /sign_in
  create: ( req, res ) ->
    User = global.models.User

    User.authenticate()(req.body.username, req.body.password, ( err, user ) ->
      if user
        res.json( user )
      else
        res.json( 401 )
    )
