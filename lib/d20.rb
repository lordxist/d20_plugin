# Contains extension to the Integer class, simplifying the rolling
# of dice as follows:
#
# <code>2.d4</code>
#
# The same works for all d* listed in D20::CoreExtensions::IntegerExtensions.
#
module D20
  # Returns a number between zero and 100.
  #
  def self.d_percent
    one_digits = rand(10)
    ten_digits = rand(10)
    return 100 if one_digits == 0 && ten_digits == 0
    return 10 * ten_digits + one_digits
  end
end
