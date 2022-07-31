# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_31_091123) do
  create_table "activities", force: :cascade do |t|
    t.string "name", null: false
    t.string "obs"
    t.date "planned_start_date"
    t.date "planned_end_date"
    t.date "start_date"
    t.date "end_date"
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_activities_on_project_id"
  end

  create_table "building_units", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "ui_color"
    t.integer "building_unit_id"
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_unit_id"], name: "index_building_units_on_building_unit_id"
    t.index ["project_id"], name: "index_building_units_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "image_url"
    t.date "start_date"
    t.date "planned_end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.boolean "is_finished"
    t.string "obs"
    t.integer "activity_id", null: false
    t.integer "building_unit_id", null: false
    t.string "assignees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_records_on_activity_id"
    t.index ["building_unit_id"], name: "index_records_on_building_unit_id"
  end

  create_table "red_days", force: :cascade do |t|
    t.date "date"
    t.string "reason"
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_red_days_on_project_id"
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string "name", null: false
    t.string "obs"
    t.string "ui_color"
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_subcontractors_on_project_id"
  end

  create_table "subcontracts", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "subcontractor_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_subcontracts_on_activity_id"
    t.index ["project_id"], name: "index_subcontracts_on_project_id"
    t.index ["subcontractor_id"], name: "index_subcontracts_on_subcontractor_id"
  end

  add_foreign_key "activities", "projects"
  add_foreign_key "building_units", "building_units"
  add_foreign_key "building_units", "projects"
  add_foreign_key "records", "activities"
  add_foreign_key "records", "building_units"
  add_foreign_key "red_days", "projects"
  add_foreign_key "subcontractors", "projects"
  add_foreign_key "subcontracts", "activities"
  add_foreign_key "subcontracts", "projects"
  add_foreign_key "subcontracts", "subcontractors"
end
