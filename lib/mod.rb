class BestMods::Mod
  attr_accessor :name ,:datemade, :originalgame, :url
  
  def self.thisyear
    self.scrape_mods
  end
  
  
    #scape kbb and then return info based on that data
    
    def self.scrape_mods
      mods = []
      
      mods << self.scrape_techradar
      
      
      #go to kbb, find the car
      #extract the properties
      #instantiate a car 
      
      mods
    end
    
    def self.scrape_techradar
      doc = Nokogiri::HTML(open("https://www.techradar.com/news/10-best-free-total-conversion-mods-for-pc"))
      
      mod = self.new
      binding.pry
    end
  end