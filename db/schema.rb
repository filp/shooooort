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

ActiveRecord::Schema.define(version: 20150301113750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "short_urls", force: :cascade do |t|
    t.string   "full_url",                    null: false
    t.string   "short_code",                  null: false
    t.integer  "times_visited",   default: 0, null: false
    t.datetime "last_visited_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "short_urls", ["short_code"], name: "index_short_urls_on_short_code", using: :btree
  add_index "short_urls", ["times_visited"], name: "index_short_urls_on_times_visited", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.boolean  "complete",               default: false, null: false
    t.integer  "creator_id",                             null: false
    t.integer  "actor_id",                               null: false
    t.string   "label",      limit: 255,                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["actor_id"], name: "index_tasks_on_actor_id", using: :btree
  add_index "tasks", ["complete"], name: "index_tasks_on_complete", using: :btree
  add_index "tasks", ["creator_id"], name: "index_tasks_on_creator_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",              limit: 255, null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
