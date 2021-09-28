# frozen_string_literal: true

require_relative "lib/world_top_movies/version"

Gem::Specification.new do |spec|
  spec.name          = "world_top_movies"
  spec.version       = WorldTopMovies::VERSION
  spec.authors       = ["Harold Torres Marino"]
  spec.email         = ["haroldtm55@gmail.com"]

  spec.summary       = "If you want to look up for only worldwide top rated movies, this is the place to go!"
  spec.description   = "Welcome to World's top movies. This gem scrapes IMDB and gives you a list of only the highest rated movies of all time. You can search by genre or just by rating. Also, you can save your favourite ones and leaves notes."
  spec.homepage      = "https://github.com/CodeHunt101/world-top-movies"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "nokogiri"
  spec.add_dependency "colorize", "~> 0.8.1"
  spec.add_dependency "artii"
  spec.add_dependency "tty-prompt"
  spec.add_dependency 'activerecord', '~> 5.2'
  spec.add_dependency "sqlite3"
  spec.add_dependency "sinatra-activerecord"

end
