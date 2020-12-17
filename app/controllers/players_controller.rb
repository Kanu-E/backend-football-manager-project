class PlayersController < ApplicationController
    def index 
        render json: PlayerSerializer.new(Player.all).serializable_hash[:data].map{|player| player[:attributes]}
    end

    def create
        player = Player.new(player_params)
            if player.save
                render json: PlayerSerializer.new(player).serializable_hash[:data][:attributes]
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
