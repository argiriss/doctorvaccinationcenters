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

ActiveRecord::Schema.define(version: 2021_05_06_122300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "speciality"
    t.bigint "vaccination_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vaccination_center_id"], name: "index_doctors_on_vaccination_center_id"
  end

  create_table "doctors_vaccination_centers", id: false, force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "vaccination_center_id", null: false
  end

  create_table "vaccination_centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "doctors", "vaccination_centers"
end
