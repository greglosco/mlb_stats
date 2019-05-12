class MlbStats::CLI 
  
  def call 
    list_teams
    menu
    goodbye
  end
  
  def list_teams
    
    puts "MLB Teams"
    puts <<-DOC.gsub /^\s*/, ''
    1. Boston Red Sox - AL East - 1st Place
    2. New York Yankees - AL East - 2nd Place
    DOC
    
    @teams = MLBStats::Team.today
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the team you'd like more info on or type list to see teams again or type exit to exit:"
    input = gets.strip.downcase
      case input
      when "1"
        puts "More info on team 1..."
      when "2"
        puts "More info on team 2..."
      when "list"
        list_teams
      else 
        puts "Not sure what you want, type list or exit"
      end
    end
  end


  def goodbye
    puts "See you tomorrow for updated stats!"
  end
end
