require File.dirname(__FILE__) + '/test_helper.rb'

class AbilityTest < Test::Unit::TestCase
  load_schema

  def test_game_character_ability_modifiers_should_not_be_nil
    gc = GameCharacter.create
	assert_not_nil gc.str_modifier
  end

  SCORE_TABLE = [-5, -5, -4, -4, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 2, 2, 3,
                 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]

  def test_game_character_ability_modifiers_should_correspond_to_score_table
    gc = GameCharacter.create
	assert_equal gc.str_modifier, SCORE_TABLE[gc.str]
  end

  def test_planned_generation
	assert !Ability.planned_generation_is_valid?(:str => 10, :dex => 8)
    assert Ability.planned_generation_is_valid?(:str => 9, :dex => 8)
  end
end
