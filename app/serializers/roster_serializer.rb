class RosterSerializer
    include FastJsonapi::ObjectSerializer
    attributes :game_id, :player_id, :id, :position
  end