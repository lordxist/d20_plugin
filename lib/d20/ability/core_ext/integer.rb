module D20
  module CoreExtensions
    module IntegerExtensions
      def modifier
	      score = self
        score -= 1 if !(score / 2).is_a?(Integer)
	      score / 2 - 5
      end
    end
  end
end

class Integer
  include D20::CoreExtensions::IntegerExtensions
end
