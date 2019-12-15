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

ActiveRecord::Schema.define(version: 2019_12_12_143651) do

  create_table "carriers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "loginID", null: false
    t.string "personal_name", null: false
    t.string "company_name", null: false
    t.string "phone_number", null: false
    t.string "fax_number"
    t.string "address"
    t.integer "trigger", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_carriers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_carriers_on_reset_password_token", unique: true
  end

  create_table "shippers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "loginID", null: false
    t.string "personal_name", null: false
    t.string "company_name", null: false
    t.string "phone_number", null: false
    t.string "fax_number"
    t.string "address"
    t.integer "trigger", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_shippers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_shippers_on_reset_password_token", unique: true
  end

end