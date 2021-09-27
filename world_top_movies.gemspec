# frozen_string_literal: true

require_relative "lib/world_top_movies/version"

Gem::Specification.new do |spec|
  spec.name          = "world_top_movies"
  spec.version       = WorldTopMovies::VERSION
  spec.authors       = ["Harold Torres Marino"]
  spec.email         = ["haroldtm55@gmail.com"]

  spec.summary       = "Summary"
  # spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "https://github.com/CodeHunt101/top-movies"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "httparty"
  spec.add_dependency "nokogiri"
  spec.add_dependency "pry"
  spec.add_dependency "colorize", "~> 0.8.1" # https://github.com/fazibear/colorize
  spec.add_dependency "artii"
  spec.add_dependency "tty-prompt" # https://github.com/piotrmurach/tty-prompt
  spec.add_dependency 'activerecord', '~> 5.2'
  spec.add_dependency "sqlite3"
  spec.add_runtime_dependency 'require_all'
  spec.add_dependency "sinatra-activerecord"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
