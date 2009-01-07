# Provides methods to determine the modifier for each ability score:
# str(ength), dex(terity), con(stitution), int(elligence), wis(dom) and
# cha(risma).
#
module Ability
  def str_modifier
    calc_modifier(str)
  end

  def dex_modifier
    calc_modifier(dex)
  end

  def con_modifier
    calc_modifier(con)
  end

  def int_modifier
    calc_modifier(int)
  end

  def wis_modifier
    calc_modifier(wis)
  end

  def cha_modifier
    calc_modifier(cha)
  end

  private
  def calc_modifier(score)
    score -= 1 if !(score / 2).is_a? Integer
	score / 2 - 5
  end

  # The total amount of score points, used by Planned Generation
  #
  SCORE_POINTS = 25

  # The cost (in score points) of each score increase done by Planned
  # Generation
  #  
  SCORE_COSTS = [0, 1, 2, 3, 4, 5, 6, 8, 10, 13, 16]

  # Checks whether the planned generation of ability scores is valid. Planned
  # generation works as follows: Scores start at 8. The total amount of score 
  # points is reduced by a certain cost for each score increase. If the points
  # fall below zero, the entire assignment is invalid.
  # 
  # This returns the remaining score points:
  #
  # <code>Ability.planned_generation_is_valid?(:str => 9, :dex => 8)</code>
  #
  # And this false:
  #
  # <code>Ability.planned_generation_is_valid?(:str => 10, :dex => 8)</code>
  #
  def self.planned_generation_is_valid?(assignment)
    score_points = SCORE_POINTS
    [:str, :dex, :con, :int, :wis, :cha].each do |a|
      if assignment && assignment[a]
        assignment[a] = 10 if assignment[a] > 10
        score_points -= SCORE_COSTS[assignment[a]]
        return false if score_points < 0
      end
    end
    score_points
  end
end
