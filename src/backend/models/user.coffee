mongoose = require 'mongoose'

module.exports = ->
  mongoose.model 'User',
    name:               String
    email:              String
    encrypted_password: String
