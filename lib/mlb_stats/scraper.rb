class MlbStats::Scraper 

  def get_page
      Nokogiri::HTML(open("https://www.msn.com/en-us/sports/mlb/teams"))
  end
  
  def scrape_conferences_index
    self.get_page.css("div.teams .conference")
  end
  
  def make_conferences
    scrape_conferences_index.each {|i| MlbStats::Conference.new_from_index(i)}
  end
  
  def scrape_divisions_index
    self.get_page.css("div.teams .division")
  end
  
  def make_divisions
    scrape_divisions_index.each {|i| MlbStats::Division.new_from_index(i)}
  end
  
  def scrape_teams_index
    self.get_page.css("div.teams li")
  end
  
  def make_teams
    scrape_teams_index.each {|i| MlbStats::Team.new_from_index(i)}
  end 

end