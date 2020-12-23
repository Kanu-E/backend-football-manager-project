class Game < ApplicationRecord
    has_many :rosters
    has_many :players, through: :rosters

    # def initialize(player_1: "player_1", player_2: "player_2", player_3: "player_3", player_4: "player_4", player_5: "player_5", player_6: "player_6", player_7: "player_7", player_8: "player_8", player_9: "player_9", player_10: "player_10", player_11: "player_11" )
    #     @player_1 = player_1
    #     @player_2 = player_2
    #     @player_3 = player_3
    #     @player_4 = player_4
    #     @player_5 = player_5
    #     @player_6 = player_6
    #     @player_7 = player_7
    #     @player_8 = player_8
    #     @player_9 = player_9
    #     @player_10 = player_10
    #     @player_11 = player_11
    #   end
end
