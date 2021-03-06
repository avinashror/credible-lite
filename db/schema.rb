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

ActiveRecord::Schema.define(version: 20161025052408) do

  create_table "lenders", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lenders_schools", id: false, force: :cascade do |t|
    t.integer "lender_id", null: false
    t.integer "school_id", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "submission_id"
    t.integer  "product_id"
    t.decimal  "apr",             precision: 5, scale: 2
    t.integer  "term"
    t.decimal  "total_cost",      precision: 9, scale: 2
    t.decimal  "total_interest",  precision: 9, scale: 2
    t.decimal  "monthly_payment", precision: 9, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["submission_id", "product_id"], name: "index_offers_on_submission_id_and_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "lender_id"
    t.integer  "term"
    t.decimal  "apr",              precision: 5, scale: 2
    t.integer  "min_credit_score"
    t.integer  "min_income"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["lender_id"], name: "index_products_on_lender_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.integer  "unitid"
    t.string   "instnm"
    t.string   "addr"
    t.string   "city"
    t.string   "stabbr"
    t.string   "zip"
    t.string   "ein"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "ssn"
    t.integer  "income"
    t.integer  "credit_score"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "school"
  end

end
