class Player < ApplicationRecord
    has_many :rosters
    has_many :games, through: :rosters
end
