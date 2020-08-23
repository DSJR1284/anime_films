module AnimeFilms

require 'pry'
require 'rest-client'
require 'json'
require 'colorize'

require_relative "./anime_films/version"
require_relative "./anime_films/api"
require_relative "./anime_films/anime"
require_relative "./anime_films/cli"

  
  class Error < StandardError; end
  # Your code goes here...
end

