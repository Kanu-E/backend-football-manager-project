class GamesController < ApplicationController
    def index 
        render json: GameSerializer.new(Game.all).serializable_hash[:data].map{|game| game[:attributes]}
    end

    def create
        game = Game.new(game_params)
        byebug
            if game.save
                render json: GameSerializer.new(game)
            end
    end

    def destroy
        # byebug
        game = Game.find(params[:id])
        game.destroy  
    end

    private

    def game_params
        params.require(:game).permit(:name)
    end

end
