class BestMods::Mod
  attr_accessor :name ,:datemade, :originalgame
  
  def self.thisyear
    self.scrape_mods
  end
  
  
    #scape kbb and then return info based on that data
    
    def self.scrape_mods
      mods = []
      
      mods << self.scrape_moddb
      mods
    end
    
    def self.scrape_moddb
      doc = Nokogiri::HTML(open("https://www.moddb.com/mods/top"))
      mod = self.new
      mod.name = mod.css("")
      mod.datemade = 
      mod.game = 
      binding.pry
    end
  end