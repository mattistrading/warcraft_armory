require 'hpricot'
require 'open-uri'

class WarcraftCharacter
  attr_accessor :name, :level, :guild, :race, :class_name
end

class WarcraftArmory  
  # Find a WoW character
  #
  # +location+ defines the server location, valid (tested) options are :eu or :us
  # +realm+ the realm where your character is. E.g. "Aszune"
  # +character_name+ the name of your character. E.g. "Adries"
  def self.find(location, realm, character_name)
    self.parse_html(Hpricot(open("http://#{location.to_s}.wowarmory.com/character-sheet.xml?r=#{realm}&n=#{character_name}")))
  end
  
  protected
  
  def self.parse_html(html)
    char = WarcraftCharacter.new
   
    details = (html/"div.character-outer").inner_text.strip.split("\n")
    small_details = details[4].split('?')
    
    char.name       = details[0]
    char.guild      = details[2]
    char.level      = small_details[1]
    char.race       = small_details[2]
    char.class_name = small_details[3]
    
    char
  end
end