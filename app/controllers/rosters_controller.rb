class RostersController < ApplicationController
    def update   
        # byebug   
        roster = Roster.find_by(position: params[:position], game_id: params[:game_id])
        roster.update(roster_params)
    end

    def create
        roster = Roster.find_by(position: params[:position], game_id: params[:game_id])
        if !roster
        roster = Roster.new(roster_params)
            if roster.save 
                render json: RosterSerializer.new(roster)
            end
        else    
            render update
        end
    end
    private

    def roster_params
        params.require(:roster).permit(:game_id, :player_id, :position)
    end

end
