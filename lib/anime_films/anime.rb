class AnimeFilms::Anime 

    @@all = []

    def self.all
        @@all
    end 

    def self.get_anime_films(arr)
        arr.each do |animehash|
            new(animehash["title"], animehash["description"], animehash["release_date"])
        end  
        binding.pry   
    end 

    def initialize(title, description, release_date)
        @title = title 
        @description = description 
        @release_date = release_date
        save 
    end 

    def save
        @@all <<self
    end 
end 
