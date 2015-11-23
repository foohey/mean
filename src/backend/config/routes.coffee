express = require 'express'

PostsController    = require '../controllers/posts'
SessionsController = require '../controllers/sessions'
AccountsController = require '../controllers/accounts'

module.exports = ->
  router = express.Router()
  ## Accounts
  router.post '/sign_up', ( req, res ) ->
    AccountsController.create( req, res )

  ## Login
  router.get '/sign_in', ( req, res ) ->
    SessionsController.index( req, res )

  router.post '/sign_in', ( req, res ) ->
    SessionsController.create( req, res )

  ## Posts
  router.get '/posts', ( req, res ) ->
    PostsController.index( req, res )

  router.get '/posts/:id', ( req, res ) ->
    PostsController.show( req, res )

  router.post '/posts', ( req, res ) ->
    PostsController.create( req, res )

  router.put '/posts/:id', ( req, res ) ->
    PostsController.create( req, res )

  router.delete '/posts/:id', ( req, res ) ->
    PostsController.destroy( req, res )

  return router
