require_relative "./anime_films/version"


require "pry"
require 'rest-client'
require 'json'
require 'colorize'

require_relative "./anime_films/api"
require_relative "./anime_films/films"
require_relative "./anime_films/cli"

module AnimeFilms
  class Error < StandardError; end
  # Your code goes here...
end

