class RostersController < ApplicationController
    def index
        render json: RosterSerializer.new(Roster.all).serializable_hash[:data].map{|roster| roster[:attributes]} 
    end
end
