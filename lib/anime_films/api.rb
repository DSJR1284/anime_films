
class AnimeFilms::API 

    def self.get_anime_films        
        films = RestClient.get('https://ghibliapi.herokuapp.com/films')
        @films = JSON.parse(films)
        AnimeFilms::Anime.get_anime_films(@films[0..9])        
    end 
    
end 

