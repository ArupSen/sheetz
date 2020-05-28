# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_28_095234) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sheets", force: :cascade do |t|
    t.date "received_date"
    t.string "rims"
    t.text "info"
    t.integer "holes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "rim_tape"
    t.integer "rim_erd"
    t.string "spoke_info"
    t.string "pattern"
    t.boolean "new_build", default: true
    t.integer "customer_id", null: false
    t.index ["customer_id"], name: "index_sheets_on_customer_id"
  end

  add_foreign_key "sheets", "customers"
end
