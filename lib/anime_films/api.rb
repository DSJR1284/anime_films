
class AnimeFilms::API 

    def self.get_anime_films 
        films = RestClient.get('https://ghibliapi.herokuapp.com/films')
        @films = JSON.parse(films)
        binding.pry
    end 
    
end 