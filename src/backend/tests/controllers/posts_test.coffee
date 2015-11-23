require '../spec_helper'

describe "Posts controller", ->

  describe "GET /posts", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .get '/posts'
        .expect( 200, done )

  describe "GET /posts/42", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .get '/posts/42'
        .expect( 200, done )

  describe "POST /posts", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .post '/posts'
        .expect( 200, done )

  describe "PUT /posts/42", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .put '/posts/42'
        .expect( 200, done )

  describe "DELETE /posts/42", ->
    it "Should respond success", ( done ) ->
      @request( @server )
        .delete '/posts/42'
        .expect( 200, done )
