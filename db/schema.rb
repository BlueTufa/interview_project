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

ActiveRecord::Schema.define(version: 2021_06_17_013625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "assignment_schedule_histories", force: :cascade do |t|
    t.bigint "exercise_schedule_id"
    t.bigint "exercise_assignment_id"
    t.datetime "assigned_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exercise_assignment_id"], name: "index_assignment_schedule_histories_on_exercise_assignment_id"
    t.index ["exercise_schedule_id"], name: "index_assignment_schedule_histories_on_exercise_schedule_id"
  end

  create_table "exercise_assignments", force: :cascade do |t|
    t.bigint "member_id"
    t.string "exercise_id"
    t.datetime "completed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_exercise_assignments_on_member_id"
  end

  create_table "exercise_schedules", force: :cascade do |t|
    t.string "exercise_id"
    t.bigint "member_id"
    t.string "schedule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.uuid "external_id", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
