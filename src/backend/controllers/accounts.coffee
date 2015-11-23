module.exports =

  # POST /sign_up
  create: ( req, res ) ->
    User = global.models.User

    User.register( new User( { username: req.body.username } ), req.body.password, ( err, user ) ->
      if err
        res.status( 400 ).json( err )
      else
        res.json( user )
    )
