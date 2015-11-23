require '../spec_helper'

describe "Accounts controller", ->

  before ->
    @user =
      username: "foobar"
      password: "password"

  describe "POST /sign_up", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .post '/sign_up'
        .send( @user )
        .expect( 200, done )

  describe "POST /sign_in", ->
    beforeEach ( done ) ->
      User = global.models.User
      User.register( new User( { username: @user.username } ), @user.password, done )

    describe "With valid credentials", ->
      it "Should authenticate user", ( done ) ->
        @request( @server )
          .post '/sign_in'
          .send( @user )
          .expect ( res ) ->
            res.body.username is "foobar"
          .expect( 200, done )

    describe "With invalid credentials", ->
      it "Should NOT authenticate user", ( done ) ->
        @request( @server )
          .post '/sign_in'
          .send( username: "foobar", password: "hello kitties" )
          .expect( 200, done )
