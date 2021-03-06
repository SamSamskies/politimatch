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

ActiveRecord::Schema.define(version: 20130816203623) do

  create_table "bills", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "full_text_url"
    t.string   "formal_id"
    t.string   "session_id"
    t.string   "openstates_uid"
    t.date     "date_introduced"
    t.date     "date_passed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislators", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "party"
    t.string   "twitter"
    t.string   "website"
    t.string   "district"
    t.string   "photo_url"
    t.string   "leg_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "legislator_id"
    t.integer  "bill_id"
    t.string   "stance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
