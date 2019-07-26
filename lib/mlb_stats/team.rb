class MlbStats::Team 
  
  attr_accessor :teamname, :record, :url
  
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
  
 end