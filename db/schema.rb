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

ActiveRecord::Schema.define(version: 20150114170051) do

  create_table "hranas", force: true do |t|
    t.string   "ime"
    t.string   "slika"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sluzenjes", force: true do |t|
    t.integer  "temperatura_max"
    t.integer  "temperatura_min"
    t.string   "slika_chasa"
    t.integer  "hrana_id"
    t.integer  "vino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vinarijas", force: true do |t|
    t.string   "ime"
    t.string   "region"
    t.string   "grad"
    t.integer  "godina"
    t.text     "opis"
    t.string   "veb_strana"
    t.string   "slika"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vinos", force: true do |t|
    t.string   "ime"
    t.string   "vid"
    t.string   "tip"
    t.string   "sorta"
    t.string   "boja"
    t.integer  "vinarija_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
