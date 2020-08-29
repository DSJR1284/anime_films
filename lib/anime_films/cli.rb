class CLI # CLI class display program and takes user input. 
  
  def self.list_animes #class method displays welcome message. iterates through the films in the @@all array in the films.rb class 
        puts "***********************************************************************************************".colorize(:color => :black, :background => :red)  
        puts "                               ***  WELCOME ANIME LOVERS ***                                   ".colorize(:color => :white, :background => :black).bold 
        puts "***********************************************************************************************".colorize(:color => :black, :background => :red) 
        puts "\n"
    
        Films.all.each_with_index do |film, i| #Displays anime films with index  
          puts "#{i + 1}. #{film.title}"
    end
      self.choose_an_anime #calls the choose_an_anime method.
  end 

  def self.choose_an_anime # Class Method displays user option/instruction for using the application.
      puts "\n" #User will choose a film by number to get a descrition and realease_date for that film. 
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :black, :background => :red)  #, :background => :green) # line for spacing aesthetics
      puts "WHICH ANIME WOULD YOU LIKE TO KNOW MORE ABOUT ?".white.bold      
      puts " "
      puts "PLEASE CHOOSE A FLIM BY TYPING THE CORRESPONDING NUMBER FOLLOWED BY ENTER.".white.bold
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :black, :background => :red)

      input = gets.chomp.to_i - 1 #user input is turned into an integer. -1 subtracts from user input due to coding index starts at 0.   
      if input < 0 || input > 9 #sets the parameters for user input. If user input is not valid they will be told Invalid input and given insturction for the application. 
        self.invalid #calls the invalid method. 
      end
        films = Films.all[input] #instance of the film choosen by the user.  
        @@films = films
        self.get_anime_info(self.films) #retrives information for the film the user chooses.  
    end

    def self.films
      @@films
    end

    def self.get_anime_info(films) #displays description and release date for the film that the user has chossen.   
      puts "" 
      puts "___________________________--_-- #{films.title} --_--___________________________".colorize(:color => :white, :background => :black).bold  #, :background => :blue)
      puts "\n"
      puts "Title: #{films.title}"
      puts "\n"
      puts "Description: #{films.description}"
      puts "\n"
      puts "Release_date: #{films.release_date}"
      puts  "\n"        
      self.user_options
    end

    def self.user_options #dispplays instruction for the user to contiune the application or exit.        
      puts "PLEASE TYPE 22 FOLLOWED BY ENTER IF YOU WOULD LIKE TO EXIT THE PROGRAM.".bold 
      puts " "
      puts "OTHERWISE, YOU MAY TYPE 11 FOLLOWED BY ENTER TO CHOOSE A FILM FROM OUR LIST.".bold 
        
      input = gets.chomp.to_i
      if input == 22
       self.leave_anime_films
      end
      if input == 11  
        puts "\n"
        self.list_animes          
       end       
      
      if input.between?(3, 10)          
       self.invalid
      end
      self.invalid
    end      
          
    def self.invalid #displays invlaid input message. 
      puts "\n"
      puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :red)  
      puts "                              :-0 INVALID SELECTION 0-:                                 ".colorize(:color => :white, :background => :black).bold 
      puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :red) 
      puts "\n"
      self.user_options
    end   

    def self.leave_anime_films #End of application message to the user.   
        puts "***********************************************************************************************".colorize(:color => :black, :background => :red)  
        puts " "
        puts "                      *** THANKS FOR STOPING BY UNTIL NEXT TIME SAYONARA ***                                   ".white.bold #colorize(:color => :white, :background => :black).bold 
        puts "***********************************************************************************************".colorize(:color => :black, :background => :red) 
        exit 
    end  

  end 
