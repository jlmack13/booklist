require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "db/development"
)

require_all 'app'
