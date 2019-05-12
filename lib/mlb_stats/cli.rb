class MlbStats::CLI 
  
  def call 
    list_teams
    menu
    goodbye
  end
  
  def list_teams
    
    # puts "MLB Teams"
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Boston Red Sox - AL East - 1st Place
    # 2. New York Yankees - AL East - 2nd Place
    # DOC
    
    @teams = MlbStats::Team.today
    @teams.each.with_index(1) {|team, i| puts "#{i}. #{team.name} - #{team.division} - #{team.division_ranking} - #{team.record}"}
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the team you'd like more info on or type list to see teams again or type exit to exit:"
    input = gets.strip.downcase
    
   if input.to_i > 0 
     puts @teams[input.to_i-1]
   elsif input == "list"
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
