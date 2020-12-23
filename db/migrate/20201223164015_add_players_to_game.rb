class AddPlayersToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :player_1, :string, default: "player_1"
    add_column :games, :player_2, :string, default: "player_2"
    add_column :games, :player_3, :string, default: "player_3"
    add_column :games, :player_4, :string, default: "player_4"
    add_column :games, :player_5, :string, default: "player_5"
    add_column :games, :player_6, :string, default: "player_6"
    add_column :games, :player_7, :string, default: "player_7"
    add_column :games, :player_8, :string, default: "player_8"
    add_column :games, :player_9, :string, default: "player_9"
    add_column :games, :player_10, :string, default: "player_10"
    add_column :games, :player_11, :string, default: "player_11"
  end
end
