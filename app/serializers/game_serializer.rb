class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :rosters, :players
end
