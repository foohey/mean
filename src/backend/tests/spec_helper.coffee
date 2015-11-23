app  = require '../main'

beforeEach ( done ) ->
  @request = require 'supertest'
  @server  = app.server

  app.mongoose.connection.db.dropDatabase (err, res) ->
    done()

afterEach ->
  @server.close
