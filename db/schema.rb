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

ActiveRecord::Schema.define(version: 20150127173253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "hranas", force: true do |t|
    t.string   "ime"
    t.string   "slika"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "komentaris", force: true do |t|
    t.string   "ime_korisnik"
    t.text     "sodrzina"
    t.datetime "vreme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sluzenje_hranas", force: true do |t|
    t.integer  "sluzenje_id"
    t.integer  "hrana_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sluzenje_hranas", ["hrana_id"], name: "index_sluzenje_hranas_on_hrana_id", using: :btree
  add_index "sluzenje_hranas", ["sluzenje_id"], name: "index_sluzenje_hranas_on_sluzenje_id", using: :btree

  create_table "sluzenjes", force: true do |t|
    t.integer  "temperatura_max"
    t.integer  "temperatura_min"
    t.string   "slika_chasa"
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
    t.string   "slika"
    t.integer  "vinarija_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
