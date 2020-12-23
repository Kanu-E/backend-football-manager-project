class AddPlayersToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :player_1, :string
    add_column :games, :player_2, :string
    add_column :games, :player_3, :string
    add_column :games, :player_4, :string
    add_column :games, :player_5, :string
    add_column :games, :player_6, :string
    add_column :games, :player_7, :string
    add_column :games, :player_8, :string
    add_column :games, :player_9, :string
    add_column :games, :player_10, :string
    add_column :games, :player_11, :string
  end
end
