require 'bundler'
Bundler.require

configure :development do
	set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}
end
require './app/controllers/application_controller'
require_all 'app'