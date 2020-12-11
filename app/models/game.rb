class Game < ApplicationRecord
    has_many :rosters
    has_many :players, through: :rosters
end
