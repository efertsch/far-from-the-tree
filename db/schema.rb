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

ActiveRecord::Schema.define(version: 20180925192417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additions", force: :cascade do |t|
    t.string "chemical_name"
    t.integer "amount"
    t.string "unit"
    t.date "date"
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_additions_on_sample_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.string "description"
    t.date "date"
    t.bigint "test_id"
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_appointments_on_sample_id"
    t.index ["test_id"], name: "index_appointments_on_test_id"
  end

  create_table "batches", force: :cascade do |t|
    t.date "date_received"
    t.string "apple_composition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.bigint "sample_id"
    t.bigint "test_id"
    t.date "date"
    t.integer "value"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_experiments_on_sample_id"
    t.index ["test_id"], name: "index_experiments_on_test_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.string "yeast_type"
    t.boolean "lees?"
    t.integer "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.integer "tote_size"
    t.bigint "batch_id"
    t.bigint "group_id"
    t.bigint "pitch_id"
    t.bigint "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_samples_on_batch_id"
    t.index ["group_id"], name: "index_samples_on_group_id"
    t.index ["pitch_id"], name: "index_samples_on_pitch_id"
    t.index ["stage_id"], name: "index_samples_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "type"
    t.string "unit"
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
  add_foreign_key "samples", "batches"
  add_foreign_key "samples", "groups"
  add_foreign_key "samples", "pitches"
  add_foreign_key "samples", "stages"
end
