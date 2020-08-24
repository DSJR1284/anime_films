class CLI 
  def self.list_animes 
        puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :red)  
        puts "                               ***  WELCOME ANIME LOVERS ***                                   ".colorize(:color => :white, :background => :black).bold 
        puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :red) 
        puts "\n"
        Films.all.each_with_index do |film, n| 
          puts "#{n + 1}. #{film.title}"
        end
        self.choose_a_anime 
    end 

    def self.choose_a_anime
      puts "\n"
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :black, :background => :red)  #, :background => :green) # line for spacing aesthetics
      puts "WHICH ANIME WOULD YOU LIKE TO KNOW MORE ABOUT?".colorize(:color => :white).bold
      puts " "
      puts "PLEASE CHOOSE A FLIM BY TYPING THE CORRESPONDING NUMBER FOLLOWED BY ENTER.".colorize(:color => :white).bold
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :black, :background => :red)

      input = gets.chomp.to_i - 1 
      if input < 0 || input > 9 
        self.wrong_selection
      end
        films = Films.all[input] 
        @@films = films
        self.get_anime_info(self.films) 
    end

      def self.films
        @@films
      end

      def self.get_anime_info(films) 
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

      def self.user_options        
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
          self.wrong_selection
        end
          self.wrong_selection
      end      
          
      def self.wrong_selection
          puts " "
          puts "                        :-O INVALID SELECTION.".colorize(:color => :white).bold
          puts " "
          self.user_options
      end   

      def self.leave_anime_films   
        puts " "
        puts "                 THANK YOU FOR FILMING WITH US. UNTIL NEXT TIME GOODBYE! :-)    ".colorize(:color => :white).bold
        puts " "
        exit
      end
  end

  

