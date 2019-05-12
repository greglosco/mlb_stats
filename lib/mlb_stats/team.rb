class MLBStats::Team 
  attr_accessor :name, :division, :division_ranking, :record, :url
  def self.today
    #return bunch of instances of teams
    puts <<-DOC.gsub /^\s*/, ''
    1. Boston Red Sox - AL East - 1st Place - 1-0
    2. New York Yankees - AL East - 2nd Place
    DOC
    
    team_1 = self.new 
    team_1.name = "Boston Red Sox"
    team_1.division = "AL East"
    team_1.division_ranking = "1st Place"
    team_1.record = "1-0"
    team_1.url = "http://www.espn.com/mlb/team/_/name/bos/boston-red-sox"
    
    [team_1]
  end
   
end