# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140503020557) do

  create_table "accountants", force: true do |t|
    t.integer  "administrative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "administratives", force: true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "administrators", force: true do |t|
    t.integer  "administrative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_types", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "final_certifications", force: true do |t|
    t.integer  "final_grade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "final_grades", force: true do |t|
    t.integer  "matriculation_id"
    t.float    "value"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculation_courses", force: true do |t|
    t.integer  "level_id"
    t.integer  "package_id"
    t.float    "final_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculation_exams", force: true do |t|
    t.integer  "matriculation_id"
    t.integer  "teacher_id"
    t.string   "institution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculations", force: true do |t|
    t.integer  "language_id"
    t.integer  "student_id"
    t.integer  "administrative_id"
    t.integer  "course_type_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.integer  "schedule_id"
    t.integer  "teacher_id"
    t.integer  "room_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "matriculation_id"
    t.date     "date"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "dni"
    t.text     "about_me"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "room_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", force: true do |t|
    t.integer  "teacher_attendance_id"
    t.integer  "hours"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "days"
    t.integer  "numberdays"
    t.time     "arrival_time"
    t.time     "desmissal_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "score_types", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.float    "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "score_type_id"
    t.integer  "matriculation_course_id"
    t.float    "value"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secretaries", force: true do |t|
    t.integer  "administrative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_attendances", force: true do |t|
    t.date     "date"
    t.integer  "state_id"
    t.integer  "matriculation_course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "person_id"
    t.integer  "reference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_attendances", force: true do |t|
    t.integer  "package_id"
    t.integer  "state_id"
    t.time     "arrival_time"
    t.time     "dismissal_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.integer  "person_id"
    t.integer  "grade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unica_students", force: true do |t|
    t.integer  "student_id"
    t.integer  "faculty_id"
    t.integer  "grade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "state"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
