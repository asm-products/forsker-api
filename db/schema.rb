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

ActiveRecord::Schema.define(version: 20150317203749) do

  create_table "events", force: :cascade do |t|
    t.integer  "group_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "link"
    t.text     "about"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["group_id"], name: "index_events_on_group_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "university"
    t.boolean  "active"
    t.text     "about"
    t.string   "country"
    t.string   "city"
    t.string   "zip_code"
    t.string   "telephone"
    t.string   "email"
    t.string   "fax"
    t.string   "website"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyword_assignments", force: :cascade do |t|
    t.integer  "keyword_id"
    t.integer  "group_id"
    t.integer  "event_id"
    t.integer  "scientist_id"
    t.integer  "position_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "keyword_assignments", ["event_id"], name: "index_keyword_assignments_on_event_id"
  add_index "keyword_assignments", ["group_id"], name: "index_keyword_assignments_on_group_id"
  add_index "keyword_assignments", ["keyword_id"], name: "index_keyword_assignments_on_keyword_id"
  add_index "keyword_assignments", ["position_id"], name: "index_keyword_assignments_on_position_id"
  add_index "keyword_assignments", ["scientist_id"], name: "index_keyword_assignments_on_scientist_id"

  create_table "keywords", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "group_id"
    t.string   "name"
    t.text     "description"
    t.string   "start_date"
    t.string   "deadline"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "positions", ["group_id"], name: "index_positions_on_group_id"

  create_table "scientists", force: :cascade do |t|
    t.integer  "group_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "prefix"
    t.string   "position"
    t.date     "in_group_since"
    t.string   "image"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "google_scholar"
    t.string   "email"
    t.string   "telephone"
    t.text     "about"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "scientists", ["group_id"], name: "index_scientists_on_group_id"

  create_table "testings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
