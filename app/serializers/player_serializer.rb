class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :number, :id
end
