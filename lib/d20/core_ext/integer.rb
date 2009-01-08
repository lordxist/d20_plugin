module D20
  module CoreExtensions
    module IntegerExtensions
      def d20
        result = 0
        self.times do |n|
          result += rand(20) + 1
        end
        result
      end

      def d4
        result = 0
          self.times do |n|
          result += rand(4) + 1
        end
        result
      end

      def d6
        result = 0
        self.times do |n|
          result += rand(6) + 1
        end
        result
      end

      def d8
        result = 0
        self.times do |n|
          result += rand(8) + 1
        end
        result
      end

      def d10
        result = 0
        self.times do |n|
          result += rand(10) + 1
        end
        result
      end

      def d12
        result = 0
        self.times do |n|
          result += rand(12) + 1
        end
        result
      end
    end
  end
end


class Integer
  include D20::CoreExtensions::IntegerExtensions
end
