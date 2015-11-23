mongoose = require 'mongoose'
passportLocalMongoose = require 'passport-local-mongoose'

module.exports = ->
  User = new mongoose.Schema(
    username: String,
    password: String,
    is_admin: Boolean
  )

  opts =
    saltlen:    10
    iterations: 10
    keylen:     10

  User.plugin( passportLocalMongoose, opts )

  return mongoose.model 'User', User
