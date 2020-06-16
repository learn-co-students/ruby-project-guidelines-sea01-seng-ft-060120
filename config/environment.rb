require 'bundler'
require 'pry'
Bundler.require

require_all 'models'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'covid_phases.db'
)