# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150409152734) do

  create_table "games", force: :cascade do |t|
    t.integer  "dungeon_master"
    t.string   "game_name"
    t.string   "game_system"
    t.string   "level_range"
    t.text     "description"
    t.integer  "minimum_number_of_players"
    t.integer  "maximum_number_of_players"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "gamevenues", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usergames", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "avatar_url"
    t.text     "bio"
    t.string   "preferred_experience"
    t.string   "preferred_version"
    t.string   "preferred_classes"
    t.string   "preferred_races"
    t.string   "preferred_alignments"
    t.integer  "preferred_level"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "special_instructions"
    t.integer  "latitude"
    t.integer  "longitude"
    t.time     "opening_time"
    t.time     "closing_time"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
