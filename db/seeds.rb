# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Player.destroy_all 
Roster.destroy_all 
Game.destroy_all 

Game.create(name: "vs ABC United")

15.times do
Player.create(name: Faker::Name.name, number: Faker::Number.unique.between(from: 1, to: 20))
end