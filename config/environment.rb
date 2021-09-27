require "bundler"
Bundler.require
# require_all "lib"

require 'active_record'
require 'tty-prompt'
require 'sqlite3'
require 'colorize'
require 'artii'
require 'sinatra/activerecord/rake'

require_relative '../lib/world_top_movies/models/movie.rb'
require_relative '../lib/world_top_movies/models/note.rb'
require_relative '../lib/world_top_movies/models/user_movie.rb'
require_relative '../lib/world_top_movies/models/user_note.rb'
require_relative '../lib/world_top_movies/models/user.rb'
require_relative '../lib/world_top_movies/cli.rb'
require_relative '../lib/world_top_movies/movie.rb'
require_relative '../lib/world_top_movies/scraper.rb'

# Establish connection with the database through database.yml
# ActiveRecord::Base.establish_connection(:development)
ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database"=> "db/development.db"
)



# Avoid undesired outputs on the terminal
ActiveRecord::Base.logger = nil
