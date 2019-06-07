class MlbStats::Conference
  
  attr_accessor :name, :divisions
  
  @@all = []
  
  def self.new_from_index(i)
    self.new(i.css("h3").text,)
  end
  
  def initialize(name=nil)
    @name = name
    @@all << self 
    @divisions = []
  end
  
  def self.all
    @@all
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
end