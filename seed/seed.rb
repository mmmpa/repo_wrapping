#!/usr/bin/env ruby
require File.expand_path('../../wrapped/config/application', __FILE__)
Rails.application.require_environment!

require 'seed-fu'

100.times do |n|
  ModelA.seed(
    id: n,
    name: SecureRandom.hex(4)
  )
end
