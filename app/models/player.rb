class Player < ApplicationRecord
    has_many :appearances
    has_many :games, through: :appearances
end
