express = require 'express'
app     = express()

path    = require 'path'

foo = "static"
app.use( express[foo](__dirname + '/../public') )

app.get '/', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/front.html' )

app.get '/admin', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/back.html' )

server = app.listen 3000, ->
  console.log 'Running server'
