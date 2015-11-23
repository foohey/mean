module.exports =

  # GET /posts
  index: ( req, res ) ->
    res.send('Posts#index')

  # GET /posts/:id
  show: ( req, res ) ->
    res.send("Posts#show ( #{ req.params.id } )")

  # POST /posts
  create: ( req, res ) ->
    res.send("Posts#create")

  # PUT /posts/:id
  update: ( req, res ) ->
    res.send("Posts#update ( #{ req.params.id } )")

  # DELETE /posts/:id
  destroy: ( req, res ) ->
    res.send("Posts#delete ( #{ req.params.id } )")
