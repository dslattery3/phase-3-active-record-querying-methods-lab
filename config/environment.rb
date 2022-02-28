ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])
ActiveRecord::Base.logger = Logger.new(STDOUT)
require_all 'app/models'
