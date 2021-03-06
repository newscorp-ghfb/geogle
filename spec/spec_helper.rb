# encoding: utf-8

require 'bundler/setup'
require 'simplecov'
SimpleCov.start
Bundler.setup

require 'geogle'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.hook_into :webmock
end
