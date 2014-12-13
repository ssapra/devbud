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

ActiveRecord::Schema.define(version: 20141213054426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "year"
    t.text     "summary"
    t.string   "password_digest"
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
    t.boolean  "verified_email",    default: false
  end

end
