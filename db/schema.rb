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

ActiveRecord::Schema.define(version: 20180110092946) do

  create_table "backlog_items", force: :cascade do |t|
    t.integer "itemType"
    t.integer "no"
    t.integer "seq"
    t.date "create_at"
    t.string "dev_type"
    t.integer "state"
    t.integer "estimate"
    t.date "started_at"
    t.date "ended_at"
    t.string "description"
    t.string "supplement"
    t.string "priority"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_id"
    t.integer "sprint_id"
    t.integer "backlog_item_id"
    t.integer "blog_author_id"
    t.integer "assign_to_id"
    t.index ["assign_to_id"], name: "index_backlog_items_on_assign_to_id"
    t.index ["backlog_item_id"], name: "index_backlog_items_on_backlog_item_id"
    t.index ["blog_author_id"], name: "index_backlog_items_on_blog_author_id"
    t.index ["project_id"], name: "index_backlog_items_on_project_id"
    t.index ["sprint_id"], name: "index_backlog_items_on_sprint_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.date "start"
    t.date "end"
    t.integer "length"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrum_members", force: :cascade do |t|
    t.integer "role"
    t.text "description"
    t.integer "project_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_scrum_members_on_project_id"
    t.index ["user_id"], name: "index_scrum_members_on_user_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.integer "no"
    t.text "description"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start"
    t.date "end"
    t.index ["no"], name: "index_sprints_on_no"
    t.index ["project_id"], name: "index_sprints_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.text "description"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
