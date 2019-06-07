class MlbStats::Division
  
  attr_accessor :name, :conference, :teams
  
  @@all = []
  
  def self.new_from_index(i)
    self.new(
      i.css("h4").text,
      )
  end
  
  def initialize(name=nil)
    @name = name
    @@all << self 
    @teams = []
  end
  
  def self.all
    @@all
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
end