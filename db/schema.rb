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

ActiveRecord::Schema.define(version: 2019_07_01_134432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.string "relationship"
    t.bigint "person_one_id"
    t.bigint "person_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_one_id"], name: "index_connections_on_person_one_id"
    t.index ["person_two_id"], name: "index_connections_on_person_two_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name_eng"
    t.string "name_pl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name_pl"
    t.string "name_eng"
    t.bigint "continent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "cps", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cps_on_country_id"
    t.index ["person_id"], name: "index_cps_on_person_id"
  end

  create_table "days", force: :cascade do |t|
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eps", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_eps_on_event_id"
    t.index ["person_id"], name: "index_eps_on_person_id"
  end

  create_table "ets", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_ets_on_event_id"
    t.index ["type_id"], name: "index_ets_on_type_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title_eng", default: "Happened today:"
    t.string "title_pl", default: "Wydarzyło się dzisiaj:"
    t.string "description_eng"
    t.string "description_pl"
    t.bigint "year_id"
    t.bigint "month_day_id"
    t.integer "mmddyyy"
    t.string "read_more_eng", default: "-"
    t.string "read_more_pl", default: "-"
    t.boolean "published", default: false
    t.bigint "place_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_events_on_country_id"
    t.index ["month_day_id"], name: "index_events_on_month_day_id"
    t.index ["place_id"], name: "index_events_on_place_id"
    t.index ["year_id"], name: "index_events_on_year_id"
  end

  create_table "month_days", force: :cascade do |t|
    t.integer "mmdd"
    t.bigint "month_id"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_month_days_on_day_id"
    t.index ["month_id"], name: "index_month_days_on_month_id"
  end

  create_table "months", force: :cascade do |t|
    t.integer "month"
    t.string "name_eng"
    t.string "name_pl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "death"
    t.integer "birth"
    t.string "bio_eng"
    t.string "bio_pl"
    t.string "picture"
    t.string "quote_eng"
    t.string "quote_pl"
    t.string "read_more_eng", default: "-"
    t.string "read_more_pl", default: "-"
    t.boolean "published", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name_eng"
    t.string "name_pl"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.integer "zip"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_places_on_country_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "tsus", force: :cascade do |t|
    t.bigint "type_id"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_tsus_on_subscription_id"
    t.index ["type_id"], name: "index_tsus_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name_eng"
    t.string "name_pl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "zip"
    t.string "status", default: "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.string "era", default: "-"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "connections", "people", column: "person_one_id"
  add_foreign_key "connections", "people", column: "person_two_id"
  add_foreign_key "countries", "continents"
  add_foreign_key "cps", "countries"
  add_foreign_key "cps", "people"
  add_foreign_key "eps", "events"
  add_foreign_key "eps", "people"
  add_foreign_key "ets", "events"
  add_foreign_key "ets", "types"
  add_foreign_key "events", "countries"
  add_foreign_key "events", "month_days"
  add_foreign_key "events", "places"
  add_foreign_key "events", "years"
  add_foreign_key "month_days", "days"
  add_foreign_key "month_days", "months"
  add_foreign_key "places", "countries"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "tsus", "subscriptions"
  add_foreign_key "tsus", "types"
end
