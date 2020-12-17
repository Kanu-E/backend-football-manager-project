class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :players
end
