class PlayersController < ApplicationController
    def index 
        render json: Player.all.map{|player| PlayerSerializer.new(player)}
    end

    def create
        player = Player.new(player_params)
            if player.save
                render json: PlayerSerializer.new(player)
            end
    end

    def destroy
        # byebug
        player = Player.find(params[:id])
        player.destroy  
    end

    private

    def player_params
        params.require(:player).permit(:name, :number)
    end

end
