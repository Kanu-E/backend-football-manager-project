class Player < ApplicationRecord
    has_many :rosters, dependent: :destroy
    has_many :games, through: :rosters
end
