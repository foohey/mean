express = require 'express'
app     = express()

foo = "static"
app.use( express[foo](__dirname + '/../public') )

app.get '/', ( req, res ) ->
  res.send('Hello :D')

server = app.listen 3000, ->
  console.log 'Running server'
