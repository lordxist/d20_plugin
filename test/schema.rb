ActiveRecord::Schema.define(:version => 0) do
  create_table :game_characters, :force => true do |t|
    t.string :name
	t.integer :str, :null => false, :default => 10
	t.integer :dex, :null => false, :default => 10
	t.integer :con, :null => false, :default => 10
	t.integer :int, :null => false, :default => 10
	t.integer :wis, :null => false, :default => 10
	t.integer :cha, :null => false, :default => 10
  end
end
