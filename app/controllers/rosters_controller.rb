class RostersController < ApplicationController
    def update
        
        if x = Roster.find(params[:id])
           x.update(roster_params)
        else
            render create
        end
    end


    private

    def roster_params
        params.require(:roster).permit(:game_id, :player_id, :position)
    end
end
