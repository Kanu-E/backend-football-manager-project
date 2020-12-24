class GamesController < ApplicationController
    def index 
        render json: GameSerializer.new(Game.all).serializable_hash[:data].map{|game| game[:attributes]}
    end

    def create
        game = Game.new(game_params)
        # byebug
            if game.save
                render json: GameSerializer.new(game).serializable_hash[:data][:attributes]
            end
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        # byebug
    end

    def destroy
        # byebug
        game = Game.find(params[:id])
        game.destroy  
    end

    private

    def game_params
        params.require(:game).permit(:name, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11)
    end

end
