require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "booklist"
)

require_all 'app'
