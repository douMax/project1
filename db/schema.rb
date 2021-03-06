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

ActiveRecord::Schema.define(version: 20170623041115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.text     "url"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accomodations_days", force: :cascade do |t|
    t.integer "accomodation_id"
    t.integer "day_id"
  end

  create_table "bills", force: :cascade do |t|
    t.integer  "total_amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cabinets", force: :cascade do |t|
    t.text     "name"
    t.text     "content"
    t.integer  "file_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.date     "trip_date"
    t.integer  "trip_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "destination"
  end

  create_table "days_places", force: :cascade do |t|
    t.integer "day_id"
    t.integer "place_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.text     "map_url"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "url"
    t.integer  "place_type"
  end

  create_table "transportations", force: :cascade do |t|
    t.text     "name"
    t.time     "departure_time"
    t.time     "arrival_time"
    t.text     "departure_port"
    t.text     "arrival_port"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trips", force: :cascade do |t|
    t.text     "name"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "destination"
    t.integer  "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trips_users", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "image"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "is_admin",        default: false
  end

end
