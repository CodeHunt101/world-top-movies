# frozen_string_literal: true

require 'sinatra/activerecord/rake'
require_relative 'lib/world_top_movies.rb'
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]
