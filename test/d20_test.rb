require File.dirname(__FILE__) + '/test_helper.rb'

class D20Test < Test::Unit::TestCase
  load_schema

  def test_d_percent
    assert_kind_of Integer, D20.d_percent
  end

  def test_d_percent_should_return_correct_value
    assert D20.d_percent <= 100
  end
end
