module D20
  module CoreExtensions
    module IntegerExtensions
      def d(n)
        result = 0
        self.times { result += rand(n) + 1 }
        result
      end
    end
  end
end


class Integer
  include D20::CoreExtensions::IntegerExtensions
end
