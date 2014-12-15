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

ActiveRecord::Schema.define(version: 20141215003921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_skills", force: true do |t|
    t.integer  "project_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "github_id"
    t.text     "description"
    t.string   "code"
    t.string   "url"
    t.datetime "started_at"
    t.datetime "last_updated_at"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_skills", force: true do |t|
    t.integer  "student_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "year"
    t.text     "summary"
    t.string   "salt"
    t.string   "resume_url"
    t.string   "website_url"
    t.string   "github_url"
    t.string   "linkedin_url"
    t.string   "image_url"
    t.string   "portfolio_url"
    t.string   "stackoverflow_url"
    t.string   "blog_url"
    t.string   "dribble_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified_email",                  default: false
    t.integer  "school_id"
    t.string   "crypted_password"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "students", ["activation_token"], name: "index_students_on_activation_token", using: :btree
  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["remember_me_token"], name: "index_students_on_remember_me_token", using: :btree

end
