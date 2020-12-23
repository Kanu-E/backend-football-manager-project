# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_23_164015) do

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "player_1", default: "player_1"
    t.string "player_2", default: "player_2"
    t.string "player_3", default: "player_3"
    t.string "player_4", default: "player_4"
    t.string "player_5", default: "player_5"
    t.string "player_6", default: "player_6"
    t.string "player_7", default: "player_7"
    t.string "player_8", default: "player_8"
    t.string "player_9", default: "player_9"
    t.string "player_10", default: "player_10"
    t.string "player_11", default: "player_11"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "game_id", null: false
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_rosters_on_game_id"
    t.index ["player_id"], name: "index_rosters_on_player_id"
  end

  add_foreign_key "rosters", "games"
  add_foreign_key "rosters", "players"
end
