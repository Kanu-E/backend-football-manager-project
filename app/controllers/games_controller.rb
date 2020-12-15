class GamesController < ApplicationController
    def index 
        render json: Game.all.map{|game| GameSerializer.new(game)}
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
