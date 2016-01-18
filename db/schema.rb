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

ActiveRecord::Schema.define(version: 20160118212603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classifications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filters", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "group"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pcos", force: :cascade do |t|
    t.decimal  "number"
    t.string   "requested_by"
    t.string   "project"
    t.date     "date"
    t.string   "status"
    t.string   "subcontractor"
    t.string   "trade"
    t.string   "proposal_num"
    t.string   "ref_doc"
    t.text     "description"
    t.string   "classification"
    t.boolean  "work_completed"
    t.boolean  "insurance_claim"
    t.boolean  "backcharge"
    t.string   "filter"
    t.string   "al"
    t.date     "proposal_recd"
    t.date     "submitted_to_owner"
    t.date     "approved_by_owner"
    t.date     "billed"
    t.decimal  "approx_value"
    t.decimal  "proposed_value"
    t.decimal  "submitted_value"
    t.decimal  "approved_value"
    t.text     "comments"
    t.string   "engineer"
    t.string   "bp"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string   "name"
    t.string   "trade"
    t.decimal  "contract_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
