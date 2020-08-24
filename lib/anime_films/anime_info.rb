module AnimeInfo 

require 'pry'  # binding.pry used to test methods in program. 
require 'rest-client'  # this gem allows you GET the data from the API.
require 'json'  # this gem helps parse data from the API.
require 'colorize' # this gem allows you to add color to your CLI. 
#Require_relatives contain all methods for the corrponsding class. 
require_relative 'api'   
require_relative 'films'  
require_relative 'cli'  
 
#Program Order Of Operation.
  API.get_anime_films #retrives information for my API call.              
  CLI.list_animes   #list anime films for user to choose from in CLI.
end
