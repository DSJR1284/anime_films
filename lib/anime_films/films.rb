class Films #Takes infomation from the API and initalizes it.    

    attr_accessor :title, :description, :release_date #Makes data accessable to other class. (Reader/Writer Methods) 
    
    @@all = [] #Class varaible to store the new instances of films.     

    def initialize(title, description, release_date) #this method creates a new instance of the following attributes from the API 
        @title = title #and assigns them to an instance variable. 
        @description = description 
        @release_date = release_date
        @@all<< self #Stores every instacne of a film. 
    end 

    def self.all #Allows the class varibale array to be utilzed in other classes/methods. 
        @@all 
    end     
end 


 
