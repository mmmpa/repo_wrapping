#!/usr/bin/env ruby
require File.expand_path('../../wrapped/config/application', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
Rails.application.require_environment!

require 'seed-fu'

10000.times do |n|
  ModelA.seed(
    id: n,
    name: SecureRandom.hex(4)
  )
end
