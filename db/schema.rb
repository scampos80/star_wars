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

ActiveRecord::Schema.define(version: 2020_02_22_035450) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "mass"
    t.string "gender"
    t.string "birth_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters_films", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_characters_films_on_character_id"
    t.index ["film_id"], name: "index_characters_films_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.integer "episodeID"
    t.string "director"
    t.string "producer"
    t.string "release_date"
    t.text "opening_crawl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "diameter"
    t.string "climate"
    t.string "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "average_height"
    t.string "average_lifespan"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters_films", "characters"
  add_foreign_key "characters_films", "films"
end
