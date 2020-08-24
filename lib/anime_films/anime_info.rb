module AnimeInfo 

require 'pry'  # binding.pry used to test methods in program. 
require 'rest-client'  # this gem allows you GET the data from the API
require 'json'  # this gem hleps parse data from the API
require 'colorize' # this gem allows you to add color to your CLI. 

require_relative 'api'  
require_relative 'films'  
require_relative 'cli'

 
#Program  Order of operation 
 API.get_anime_films                    
 CLI.list_animes    
end
