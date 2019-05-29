require_relative './best_mods.rb'

class BestMods::CLI
  
  def call
  puts "These are the best PC mods of 2019!!"
  end
  
  def list
    puts "Top 5 Mods of 2019:"
    @mods = BestMods::Mod.thisyear
    @mods.each.with_index(1) do |mod, i|
      puts "#{i}. #{mod.name} - #{mod.year} - #{mod.ogame}"
  end 
end

  def menu
    input = nil
    while input != "exit"
     puts "Enter the number of the mod you would like more info on or type list to see the mods again or type exit to leave:"
    input = gets.strip.downcase
    
    if input.to_i > 0
      the_mod = @mods[input.to_i-1]
      puts "#{mod.name} - #{mod.year} - #{mod.ogame}"
    elsif input == "list"
    list_mods
      else
        puts "Not sure what you want, please type list or exit."
    end
  end 
end

  def goodbye
    puts "Goodbye! Hope you enjoyed our list!"
  end
end