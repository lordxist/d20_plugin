require 'd20/core_ext/integer'
require 'd20/ability'
# Simplifies the rolling of dice as follows:
#
# <code>2.d(4)</code>
#
# This example simulates rolling two four-sided dice.
#
module D20
  # Returns a number between zero and 100.
  #
  def self.d_percent
    one_digit = rand(10)
    ten_digit = rand(10)
    return 100 if one_digit == 0 && ten_digit == 0
    return 10 * ten_digit + one_digit
  end
end
