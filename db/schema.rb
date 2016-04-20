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

ActiveRecord::Schema.define(version: 20160419221145) do

  create_table "checkpoints", force: :cascade do |t|
    t.integer  "quest_id",    limit: 4
    t.integer  "parent_id",   limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "photo_tasks", force: :cascade do |t|
    t.string   "image",       limit: 255
    t.string   "answer",      limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "point_tasks", force: :cascade do |t|
    t.integer  "this_cp_id", limit: 4
    t.integer  "next_cp_id", limit: 4
    t.integer  "task_id",    limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "quests", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "reward",      limit: 4
    t.integer  "experience",  limit: 4
    t.float    "price",       limit: 24
    t.integer  "start_id",    limit: 4
    t.integer  "downloads",   limit: 4,     default: 0
    t.string   "logo",        limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "element_type",  limit: 255
    t.integer  "element_id",    limit: 4
    t.string   "description",   limit: 255
    t.integer  "point_task_id", limit: 4
    t.boolean  "showable"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "text_tasks", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.string   "answer",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "user_quests", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "quest_id",   limit: 4
    t.integer  "checkpoint", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "surname",         limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "salt",            limit: 255
    t.string   "role",            limit: 255
    t.integer  "money",           limit: 4,   default: 0
    t.integer  "experience",      limit: 4,   default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end
