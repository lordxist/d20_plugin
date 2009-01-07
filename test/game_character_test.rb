require File.dirname(__FILE__) + '/test_helper.rb'

class GameCharacterTest < Test::Unit::TestCase
  load_schema

  def test_game_character
    assert_kind_of GameCharacter, GameCharacter.new
  end
end
