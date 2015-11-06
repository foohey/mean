express  = require 'express'
mongoose = require 'mongoose'
path     = require 'path'
config   = require './config'

app = express()
mongoose.connect('mongodb://localhost/mean')
@models = require './models'

# Little hack because static is a coffeescript reserved word...
foo = "static"
app.use( express[foo](__dirname + '/../public') )

app.get '/', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/front.html' )

app.get '/admin', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/back.html' )

console.log config

server = app.listen config.env.port, ->
  console.log "Running server on #{ config.env.port }"
