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

ActiveRecord::Schema.define(version: 20170303171644) do

  create_table "lotteries", force: :cascade do |t|
    t.date     "lottery_date"
    t.string   "pot"
    t.string   "selected"
    t.string   "last_selected"
    t.string   "full_pot"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "status"
    t.string   "code"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kind"
  end

  create_table "user_lotteries", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ticket_id"
    t.integer  "lottery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.integer  "status"
    t.string   "wallet"
    t.string   "wallet_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kind"
  end

end
