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

ActiveRecord::Schema.define(version: 20181003191123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additions", force: :cascade do |t|
    t.string "chemical_name"
    t.string "amount"
    t.date "date"
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.index ["sample_id"], name: "index_additions_on_sample_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.bigint "test_id"
    t.bigint "sample_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_appointments_on_sample_id"
    t.index ["test_id"], name: "index_appointments_on_test_id"
  end

  create_table "experiments", force: :cascade do |t|
    t.date "date"
    t.string "result"
    t.bigint "test_id"
    t.bigint "sample_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_experiments_on_sample_id"
    t.index ["test_id"], name: "index_experiments_on_test_id"
  end

  create_table "juice_shipments", force: :cascade do |t|
    t.date "date_received"
    t.string "apple_composition"
    t.decimal "specific_gravity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.integer "tote_size"
    t.string "yeast_type"
    t.integer "round"
    t.bigint "juice_shipment_id"
    t.bigint "stage_id"
    t.string "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juice_shipment_id"], name: "index_samples_on_juice_shipment_id"
    t.index ["stage_id"], name: "index_samples_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "units"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "additions", "samples"
  add_foreign_key "appointments", "samples"
  add_foreign_key "appointments", "tests"
  add_foreign_key "experiments", "samples"
  add_foreign_key "experiments", "tests"
  add_foreign_key "samples", "juice_shipments"
  add_foreign_key "samples", "stages"
end
