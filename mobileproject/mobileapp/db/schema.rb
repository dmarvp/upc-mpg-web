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

ActiveRecord::Schema.define(version: 20150716021724) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ntransactions", force: :cascade do |t|
    t.datetime "datetransaction"
    t.integer  "transactiontype", limit: 4
    t.decimal  "amount",                        precision: 10
    t.text     "description",     limit: 65535
    t.integer  "category_id",     limit: 4
    t.integer  "customer_id",     limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "ntransactions", ["category_id"], name: "index_ntransactions_on_category_id", using: :btree
  add_index "ntransactions", ["customer_id"], name: "index_ntransactions_on_customer_id", using: :btree

  create_table "periods", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "recurrent_transactions", force: :cascade do |t|
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "period_id",   limit: 4
    t.date     "nextdate"
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "description", limit: 65535
  end

  add_index "recurrent_transactions", ["customer_id"], name: "index_recurrent_transactions_on_customer_id", using: :btree
  add_index "recurrent_transactions", ["period_id"], name: "index_recurrent_transactions_on_period_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "ntransactions", "categories"
  add_foreign_key "ntransactions", "customers"
  add_foreign_key "recurrent_transactions", "customers"
  add_foreign_key "recurrent_transactions", "periods"
end
