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

ActiveRecord::Schema.define(version: 20140514153742) do

  create_table "options", force: true do |t|
    t.string   "name"
    t.string   "option_type"
    t.float    "cost"
    t.float    "markup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_options", force: true do |t|
    t.integer  "vehicle_id"
    t.integer  "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.string   "make"
    t.string   "vehicle_model"
    t.integer  "year"
    t.string   "color"
    t.float    "cost"
    t.float    "markup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end