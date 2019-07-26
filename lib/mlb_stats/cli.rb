class MlbStats::CLI 
  
  def call 
    
    MlbStats::Scraper.new.make_teams
    
    puts "Welcome to the MLB Team Stat Tracker!!!"
    menu
  end
  
  def menu
    list_teams
    puts "Pick a team"
    input = gets.strip
    team = MlbStats::Team.find(input.to_i)
    print_team_stats(team)
    goodbye
  end
  
  def list_teams
    MlbStats::Team.all.each.with_index(1) {|team, i| puts "#{i}. #{team.teamname}"}
  end

  def print_team_stats(team)
    puts "Team: #{team.teamname}"
    puts "Record: #{team.record}"
  end

  def goodbye
    puts "See you tomorrow for updated team stats!"
  end
end
