express = require 'express'
app     = express()

# app.use '/static', require('serve-static')('../public')


app.get '/', ( req, res ) ->
  res.send('Hello :D')

server = app.listen 3000, ->
  console.log 'Running server'
