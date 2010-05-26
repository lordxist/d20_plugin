module D20
  module Ability
    # Planned generation of ability scores works as follows: Scores start at 8.
    # The total amount of score points is reduced by a certain cost for each score
    # increase. If the points fall below zero, the entire assignment is invalid.
    # 
    # This returns true and retrieves the remaining score points:
    #
    # <code>
    # planned_generation = PlannedGeneration.new([9, 8])
    # planned_generation.valid?
    # planned_generation.remaining_score_points
    # </code>
    #
    # And this returns false:
    #
    # <code>PlannedGeneration.new([10, 8]).valid?</code>
    #
    # You can alternatively use a hash for the assignment, whose values will then be used.
    # The default value for the score points is 25 and the default values for the score costs
    # are as follows (incremented at each score increase): 0, 1, 2, 3, 4, 5, 6, 8, 10, 13, 16.
    # They can be changed using the options hash:
    #
    # <code>
    # options = {
    #   :score_points => 30,
    #   :score_costs => [0, 2, 4, 6, 8, 9, 10, 11, 12, 13, 16]
    # }
    # PlannedGeneration.new({ :str => 10, :dex => 8 }, options).valid?
    # </code>
    #
    # The score costs array must have at least 10 indexes. Planned Generation is only using
    # 10, however.
    #
    class PlannedGeneration
      attr_reader :assignment

      def initialize(assignment, options = {})
        @assignment = assignment
        @assignment = @assignment.values if @assignment.is_a?(Hash)

        options.merge!(
          :score_points => 25,
          :score_costs => [0, 1, 2, 3, 4, 5, 6, 8, 10, 13, 16]
        )

        @remaining_score_points = options[:score_points]
        assignment.each do |value|
          value = 10 if value > 10
          @remaining_score_points -= options[:score_costs][value]
          break if @remaining_score_points < 0
        end
      end

      # The remaining score points as a positive integer.
      #
      def remaining_score_points
        @remaining_score_points < 0 ? 0 : @remaining_score_points
      end

      def valid?
        @remaining_score_points >= 0
      end
    end
  end
end
