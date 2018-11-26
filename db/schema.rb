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

ActiveRecord::Schema.define(version: 2018_11_16_203928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beerpairings", force: :cascade do |t|
    t.integer "weight"
    t.bigint "maindish_id"
    t.bigint "beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beerpairings_on_beer_id"
    t.index ["maindish_id"], name: "index_beerpairings_on_maindish_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maindishes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winepairings", force: :cascade do |t|
    t.integer "weight"
    t.bigint "maindish_id"
    t.bigint "wine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maindish_id"], name: "index_winepairings_on_maindish_id"
    t.index ["wine_id"], name: "index_winepairings_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beerpairings", "beers"
  add_foreign_key "beerpairings", "maindishes"
  add_foreign_key "winepairings", "maindishes"
  add_foreign_key "winepairings", "wines"
end
