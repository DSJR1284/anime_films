
class API 

    def self.get_anime_films
        movies =["2baf70d1-42bb-4437-b551-e5fed5a87abe","12cfb892-aac0-4c5b-94af-521852e46d6a","58611129-2dbc-4a81-a72f-77ddfc1b1b49", "ea660b10-85c4-4ae3-8a5f-41cea3648e3e", "4e236f34-b981-41c3-8c65-f8c9000b94e7", "ebbb6b7c-945c-41ee-a792-de0e43191bd8", "1b67aa9a-2e4a-45af-ac98-64d6ad15b16c", "ff24da26-a969-4f0e-ba1e-a122ead6c6e3", "0440483e-ca0e-4120-8c50-4c8cd9b965d6", "45204234-adfd-45cb-a505-a8e7a676b114"]
         movies.each_with_index do |info, index|
          resp = RestClient.get("https://ghibliapi.herokuapp.com/films/#{info}")          
          films_hash = JSON.parse(resp)
          Films.new(films_hash["title"], films_hash["description"], films_hash["release_date"])               
        end
    end    
   
end
