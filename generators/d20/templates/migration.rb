class CreateD20 < ActiveRecord::Migration
  def self.up
    create_table :game_characters do |t|
      t.column :str, :integer
      t.column :dex, :integer
      t.column :con, :integer
      t.column :int, :integer
      t.column :wis, :integer
      t.column :cha, :integer
    end
  end

  def self.down
    drop_table :game_characters
  end
end
