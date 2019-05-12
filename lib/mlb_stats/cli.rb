class MlbStats::CLI 
  
  def call 
    list_teams
    menu
  end
  
  def list_teams
    
    puts "MLB Teams"
    puts <<-DOC.gsub /^\s*/, ''
    1. Boston Red Sox - AL East - 1st Place
    2. New York Yankees - AL East - 2nd Place
    DOC
  end
  
  def menu
    puts "Enter the number of the team you'd like more info on:"
  end
  
end