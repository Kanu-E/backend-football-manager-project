class AddPlayersToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :player_1, :string, default: "player 1"
    add_column :games, :player_2, :string, default: "player 2"
    add_column :games, :player_3, :string, default: "player 3"
    add_column :games, :player_4, :string, default: "player 4"
    add_column :games, :player_5, :string, default: "player 5"
    add_column :games, :player_6, :string, default: "player 6"
    add_column :games, :player_7, :string, default: "player 7"
    add_column :games, :player_8, :string, default: "player 8"
    add_column :games, :player_9, :string, default: "player 9"
    add_column :games, :player_10, :string, default: "player 10"
    add_column :games, :player_11, :string, default: "player 11"
  end
end
