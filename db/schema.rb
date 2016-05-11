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

ActiveRecord::Schema.define(version: 20160511041352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "venue_id"
    t.integer  "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "genre_id"
    t.integer  "venue_id"
    t.datetime "event_time"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "likes", ["venue_id"], name: "index_likes_on_venue_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "gender"
    t.text     "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_type_id"
    t.text     "password_digest"
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "suburd"
    t.integer  "postcode"
    t.text     "image"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.string   "venue_type"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_foreign_key "comments", "venues"
  add_foreign_key "events", "genres"
  add_foreign_key "events", "venues"
  add_foreign_key "likes", "venues"
  add_foreign_key "users", "user_types"
  add_foreign_key "venues", "users"
end
