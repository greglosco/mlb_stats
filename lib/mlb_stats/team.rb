class MlbStats::Team 
  attr_accessor :teamname, :record, :conference, :division, :url
  
  def self.new_from_index(i)
    self.new(
        i.css(".teamname").text,
        i.css("").text,
        i.css("").text,
        i.css("").text,
        i.css("").text,
      )
  end
  
  def initialize (teamname=nil, record=nil, conference=nil, division=nil, url=nil)
    @teamname = teamname
    @record = record
    @conference = conference
    @division = division 
    @url = url
  end
  
  def self.enter
    #return bunch of instances of teams
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Boston Red Sox - AL East - 1st Place - 1-0
    # 2. New York Yankees - AL East - 2nd Place
    # DOC
    
    #SCRAPE
    # MlbStats::TeamScraper.new.teams
    
    
    # doc = Nokogiri::HTML(open("http://www.espn.com/mlb/team/_/name/bos/boston-red-sox"))
    location = doc.search("span.ClubhouseHeader__Loaction").text
    
    # team_1 = self.new 
    # team_1.location = "Boston"
    # team_1.name = "Red Sox"
    # team_1.division_ranking_and_division = "1st Place in the AL East"
    # team_1.record = "1-0"
    # team_1.url = "http://www.espn.com/mlb/team/_/name/bos/boston-red-sox"
    
    # [team_1]
  end
   
end