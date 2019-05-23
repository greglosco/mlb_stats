class MlbStats::Team 
  
  attr_accessor :teamname, :record, :url, :standing, :home_record, :away_record
  
  @@all = []
  
  def self.new_from_index(i)
    self.new(
        i.css(".teamname").text,
        i.css(".teamrecord").text,
        "https://www.msn.com#{i.css("a").attribute("href").text}",
      )
  end
  
  def initialize (teamname=nil, record=nil, url=nil)
    @teamname = teamname
    @record = record
    @url = url
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  
  def standing
    @standing ||= doc.css("div.records div.record:nth-child(1) div.value")
  end
  
   def home_record
    @homerecord ||= doc.css("div.records div.record:nth-child(3) div.value")
  end
  
   def away_record
    @awayrecord ||= doc.css("div.records div.record:nth-child(4) div.value")
  end
  
end

# def self.enter
  #   #return bunch of instances of teams
  #   # puts <<-DOC.gsub /^\s*/, ''
  #   # 1. Boston Red Sox - AL East - 1st Place - 1-0
  #   # 2. New York Yankees - AL East - 2nd Place
  #   # DOC
    
  #   #SCRAPE
  #   # MlbStats::TeamScraper.new.teams
    
    
 
    
  #   # team_1 = self.new 
  #   # team_1.location = "Boston"
  #   # team_1.name = "Red Sox"
  #   # team_1.division_ranking_and_division = "1st Place in the AL East"
  #   # team_1.record = "1-0"
  #   # team_1.url = "http://www.espn.com/mlb/team/_/name/bos/boston-red-sox"
    
  #   # [team_1]
  # end