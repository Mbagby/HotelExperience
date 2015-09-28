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

ActiveRecord::Schema.define(version: 20150928173242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.text     "image_url"
    t.text     "website_url"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "number"
    t.string   "floor"
    t.string   "tower"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "hotel_id"
  end

  add_index "rooms", ["hotel_id"], name: "index_rooms_on_hotel_id", using: :btree

  create_table "stays", force: :cascade do |t|
    t.string   "title"
    t.string   "checkin"
    t.string   "checkout"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "room_id"
    t.integer  "hotel_id"
    t.integer  "user_id"
    t.boolean  "do_not_disturb", default: false
  end

  add_index "stays", ["hotel_id"], name: "index_stays_on_hotel_id", using: :btree
  add_index "stays", ["room_id"], name: "index_stays_on_room_id", using: :btree
  add_index "stays", ["user_id"], name: "index_stays_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "work_orders", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "hotel_id"
    t.integer  "room_id"
    t.integer  "stay_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  add_index "work_orders", ["hotel_id"], name: "index_work_orders_on_hotel_id", using: :btree
  add_index "work_orders", ["room_id"], name: "index_work_orders_on_room_id", using: :btree
  add_index "work_orders", ["stay_id"], name: "index_work_orders_on_stay_id", using: :btree
  add_index "work_orders", ["user_id"], name: "index_work_orders_on_user_id", using: :btree

  add_foreign_key "rooms", "hotels"
  add_foreign_key "stays", "hotels"
  add_foreign_key "stays", "rooms"
  add_foreign_key "stays", "users"
  add_foreign_key "work_orders", "hotels"
  add_foreign_key "work_orders", "rooms"
  add_foreign_key "work_orders", "stays"
  add_foreign_key "work_orders", "users"
end
