module AnimeInfo 

require 'pry'  # binding.pry used to test methods in program. 
<<<<<<< HEAD
require 'rest-client'  # this gem allows you GET the data from the API.
require 'json'  # this gem helps parse data from the API.
=======
require 'rest-client'  # this gem allows you GET the data from the API
require 'json'  # this gem hleps parse data from the API
>>>>>>> 75e03d34f30d9811ba97b7487602b1c9b362d2d3
require 'colorize' # this gem allows you to add color to your CLI. 

require_relative 'api'  
require_relative 'films'  
<<<<<<< HEAD
require_relative 'cli'  
 
#Program Order Of Operation.
  API.get_anime_films                  
  CLI.list_animes   
=======
require_relative 'cli'

 
#Program  Order of operation 
 API.get_anime_films                    
 CLI.list_animes    
>>>>>>> 75e03d34f30d9811ba97b7487602b1c9b362d2d3
end
