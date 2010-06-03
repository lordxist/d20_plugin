# The standard character.
#
class GameCharacter < ActiveRecord::Base
  attribute_collection :abilities, [:str, :dex, :con, :int, :wis, :cha]
end
