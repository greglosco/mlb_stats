class MlbStats::Scraper 

def get_page
    Nokogiri::HTML(open("https://www.msn.com/en-us/sports/mlb/teams"))
end

def scrape_teams_index
  self.get_page.css("div.teams li")
end
  
  
  def make_team
    scrape_teams_index.each {|i| MlbStats::Team.new_from_index(i)}
  end 


end