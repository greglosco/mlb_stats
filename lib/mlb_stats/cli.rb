class MlbStats::CLI 
  # fix the program so it doesn't crash with bad numeric input 
  # sanitize your input -- in other words, if I type a string, tell me I need a number 
  # don't exit the program unless the user explicitly chooses to do so
  
  def call 
    MlbStats::Scraper.new.make_teams
    
    puts "Welcome to the MLB Team Stat Tracker!!!"
    menu
  end
  
  def menu
    list_teams
    puts "Pick a team"
    input = gets.strip
    valid_input?(input)
    team = MlbStats::Team.find(input.to_i)
    print_team_stats(team)
    goodbye
  end
  
  def list_teams
    MlbStats::Team.all.each.with_index(1) { |team, i| puts "#{i}. #{team.teamname}"}
  end

  def print_team_stats(team)
    puts "Team: #{team.teamname}"
    puts "Record: #{team.record}"
  end
  
  def valid_input?(input)
    if !input.to_i.between?(1,32)
      puts "Invalid number: Please enter a valid number"
      menu
    end
  end

  def goodbye
    puts "See you tomorrow for updated team stats!"
  end
end
