express  = require 'express'
mongoose = require 'mongoose'
path     = require 'path'
config   = require './config'

app = express()
mongoose.connect('mongodb://localhost/mean')

global.models = require './models'

# Little hack because static is a coffeescript reserved word...
foo = "static"
app.use( express[foo](__dirname + '/../public') )

app.get '/', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/front.html' )

app.get '/admin', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/back.html' )

posts = require( './controllers/posts' )( express )

app.use '/posts', posts

server = app.listen config.env.port, ->
  console.log "Running server on #{ config.env.port }"

module.exports = server
