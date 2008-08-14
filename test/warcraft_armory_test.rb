require 'test/unit'

require 'rubygems'
gem 'activerecord', '>= 1.15.4.7794'
require 'active_record'

require "#{File.dirname(__FILE__)}/../init"

class WarcraftArmoryTest < Test::Unit::TestCase
  
  def setup
    @scraped_content = File.read(File.expand_path(File.dirname(__FILE__)) + '/assets/character.html').to_s
    @html = Hpricot.parse(@scraped_content)
  end
  
  def teardown
    # Nothing
  end
  
  def test_asset_loading
    puts @scraped_content.class
    assert_equal String, @scraped_content.class
    assert_equal Hpricot::Doc, @html.class
  end
  
  def test_character_loading
    character = WarcraftArmory.parse_html(@html)
    
    assert_equal 'Adries', character.name
    assert_equal '13', character.level
    assert_equal 'Human', character.race    
    assert_equal 'Warrior', character.class_name
    
    assert_equal 'The Justice League', character.guild
    
    assert_equal WarcraftCharacter, character.class
  end
end
