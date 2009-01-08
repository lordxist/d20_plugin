require File.dirname(__FILE__) + '/../../test_helper.rb'

class IntegerTest < Test::Unit::TestCase
  load_schema

  def test_d20
	assert_kind_of Integer, 1.d20
  end
  
  def test_d20_should_return_correct_value
    assert 1.d20 <= 20
  end
end
