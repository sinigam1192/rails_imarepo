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

ActiveRecord::Schema.define(version: 2019_10_27_141144) do

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.date "date"
    t.time "in_time"
    t.time "out_time"
    t.string "adress"
    t.float "latitude"
    t.float "longitude"
    t.text "content_start"
    t.text "cotnent_in"
    t.text "content_out"
    t.time "arrival_time"
    t.time "withdrawal_time"
    t.integer "from_user"
    t.integer "to_user"
    t.string "items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "password"
    t.string "company_id"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer "company_id"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
