require 'active_record'
require 'tty-prompt'
require 'sqlite3'
require 'colorize'
require 'artii'
require 'httparty'
require 'nokogiri'

require_relative '../lib/world_top_movies/models/movie.rb'
require_relative '../lib/world_top_movies/models/note.rb'
require_relative '../lib/world_top_movies/models/user_movie.rb'
require_relative '../lib/world_top_movies/models/user_note.rb'
require_relative '../lib/world_top_movies/models/user.rb'
require_relative '../lib/world_top_movies/cli.rb'
require_relative '../lib/world_top_movies/movie.rb'
require_relative '../lib/world_top_movies/scraper.rb'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database"=> "#{__dir__}/../db/development.db"
)

# Avoid undesired outputs on the terminal
ActiveRecord::Base.logger = nil
