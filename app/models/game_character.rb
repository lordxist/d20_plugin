# The standard character.
#
class GameCharacter < ActiveRecord::Base
  def abilities
    {
      :str => str,
      :dex => dex,
      :con => con,
      :int => int,
      :wis => wis,
      :cha => cha
    }
  end
end
