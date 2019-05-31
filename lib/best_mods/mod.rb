class BestMods::Mod
  attr_accessor :name ,:datemade
  
  def self.thisyear
    self.scrape_mods
  end
    
    def self.scrape_mods
      mods = []
      mods << self.scrape_moddb
      mods
    end
    
    def self.scrape_moddb
      doc = Nokogiri::HTML(open("https://www.moddb.com/mods/top"))
      mod = self.new
      mod.name = mod.css("a").first.attributes["href"].text
      mod.datemade = mod.css("time").text
      #binding.pry
    end
  end