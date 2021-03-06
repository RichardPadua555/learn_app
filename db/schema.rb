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

ActiveRecord::Schema.define(version: 2020_08_12_131510) do

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code", limit: 32
    t.string "name", limit: 256, null: false
    t.string "description", limit: 256
    t.integer "number_sem", default: 1, null: false
    t.string "status", limit: 16, default: "ACTIVE", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", limit: 256, null: false
    t.string "last_name", limit: 256, null: false
    t.integer "age", null: false
    t.string "gender", limit: 23, null: false
    t.string "address", limit: 256
    t.string "mobile_number", null: false
    t.string "email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
  end

end
