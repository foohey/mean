module.exports = ( express ) ->
  router = express.Router()

  # GET /posts
  router.get '/', ( req, res ) ->
    res.send('Posts#index')

  # GET /posts/:id
  router.get '/:id', ( req, res ) ->
    res.send("Posts#show ( #{ req.params.id } )")

  # POST /posts
  router.post '/', ( req, res ) ->
    res.send("Posts#create")

  # PUT /posts/:id
  router.put '/:id', ( req, res ) ->
    res.send("Posts#update ( #{ req.params.id } )")

  # DELETE /posts/:id
  router.delete '/:id', ( req, res ) ->
    res.send("Posts#delete ( #{ req.params.id } )")

  return router
