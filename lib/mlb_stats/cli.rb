class MlbStats::CLI 
  
  def call 
    
    # MlbStats::Scraper.new.make_conferences
    # MlbStats::Scraper.new.make_divisions
    MlbStats::Scraper.new.make_teams
    
    puts "Welcome to the MLB Team Stat Tracker!!!"
    menu
  end
  
  def menu
    # list_conferences
    # puts "Pick a Conference"
    # input = gets.strip
    # input = MlbStats::Conference.find(input.to_i)
    # list_divisions(input)
    # puts "Pick a division"
    puts "Pick a team"
    list_teams
    goodbye
  end
  
  # def list_conferences
  #   MlbStats::Conference.all.each.with_index(1) {|conference, i| puts "#{i}. #{conference.name}"}
  # end
  
  # def list_divisions(input)
  #   MlbStats::Division.all[input-1, 0].each.with_index(input) {|division, i| puts "#{i}. #{division.name}"}
  # end
  
  def list_teams
    MlbStats::Team.all.each.with_index(1) {|team, i| puts "#{i}. #{team.teamname}"}
  end
  
  # def menu
  #     puts "What team would you like stats on?"
  #     input = gets.strip
  #     team = MlbStats::Team.find(input.to_i)
  #     print_team_stats(team)
  # end

  # def print_team_stats(team)
  #   puts "Team: #{team.teamname}"
  #   puts "#{team.conference}"
  #   puts "#{team.division}"
  #   puts "Record: #{team.record}"
  #   puts "#{team.standing}"
  #   puts "#{team.home_record}"
  #   puts "#{team.away_record}"
  # end

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
  
