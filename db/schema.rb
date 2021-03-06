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

ActiveRecord::Schema.define(version: 20160309023846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name"
    t.string   "place_id"
    t.string   "address"
    t.string   "formatted_address"
    t.string   "formatted_phone_number"
    t.string   "old_latitude"
    t.string   "old_longitude"
    t.string   "icon"
    t.float    "rating"
    t.string   "types"
    t.string   "url"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "check_ins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "bar_id"
    t.integer  "game_id"
    t.integer  "league_id"
    t.integer  "sport_id"
    t.string   "comments"
    t.integer  "team_1_id"
    t.integer  "team_2_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "date"
    t.string   "location"
    t.integer  "team_1_id"
    t.integer  "team_2_id"
    t.integer  "check_in_id"
    t.integer  "sport_id"
    t.integer  "league_id"
    t.integer  "bar_id"
    t.string   "time"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
    t.integer  "user_id"
    t.integer  "bar_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "league_id"
    t.integer  "sport_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "team_check_ins", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "check_in_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "league_id"
    t.integer  "sport_id"
    t.integer  "game_id"
    t.string   "logo"
  end

  create_table "user_teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "team_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "bar_owner",              default: false
    t.boolean  "admin",                  default: false
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
