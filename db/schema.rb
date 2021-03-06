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

ActiveRecord::Schema.define(version: 20160831032506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "role",            default: 0
    t.string  "email"
    t.string  "name"
    t.text    "image"
    t.text    "password_digest"
  end

  create_table "accounts_children", id: false, force: :cascade do |t|
    t.integer "account_id"
    t.integer "child_id"
  end

  create_table "accounts_stories", force: :cascade do |t|
    t.integer "story_id"
    t.integer "account_id"
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.text     "image"
    t.date     "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.string   "image"
    t.integer  "story_id"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.date     "story_date"
    t.text     "content"
    t.integer  "account_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "image",      default: [],              array: true
  end

end
