class MlbStats::CLI 
  
  def call 
    MlbStats::Scraper.new.make_teams
    "Welcome to the MLB Team Stat Tracker"
    list_teams
    menu
    goodbye
  end
  
  def list_teams
    @teams = MlbStats::Team.all
    @teams.each.with_index(1) {|team, i| puts "#{i}. #{team.teamname}"}
  end
  
  def menu
      
  end

  def print_team(team)
    
    
    
  end

  def goodbye
    puts "See you tomorrow for updated team stats!"
  end
end

#   input = nil
  #   while input != "exit"
  #   puts "Enter the number of the team you'd like more info on or type list to see teams again or type exit to exit:"
  #   input = gets.strip.downcase
    
  # if input.to_i > 0 
  #   puts @teams[input.to_i-1]
  # elsif input == "list"
  #   list_teams
  # else       
  #   puts "Not sure what you want, type list or exit"
  #     end
  #   end
  
