express  = require 'express'
mongoose = require 'mongoose'
path     = require 'path'

passport      = require  'passport'
localStrategy = require( 'passport-local' ).Strategy
cookieParser  = require 'cookie-parser'
bodyParser    = require 'body-parser'

config   = require './config'

app = express()
mongoose.connect('mongodb://127.0.0.1/mean')

global.models = require './models'

app.use( cookieParser() )
app.use require('express-session')(
  secret:            'Kitties will take over the world'
  resave:            false
  saveUninitialized: false
)
app.use bodyParser.json()
app.use bodyParser.urlencoded(extended: false)

app.use( passport.initialize() )
app.use( passport.session() )

User = global.models.User

passport.use( new localStrategy( User.authenticate() ) )
passport.serializeUser( User.serializeUser() )
passport.deserializeUser( User.deserializeUser() )

# Little hack because static is a coffeescript reserved word...
foo = "static"
app.use( express[foo](__dirname + '/../public') )

app.get '/', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/front.html' )

app.get '/admin', ( req, res ) ->
  res.sendFile( path.join __dirname, '..', 'public/html/views/back.html' )

app.use '/', config.routes

server = app.listen config.env.port, ->
  console.log "Running server on #{ config.env.port }"

module.exports =
  server:   server
  mongoose: mongoose
