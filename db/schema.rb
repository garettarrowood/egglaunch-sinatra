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

ActiveRecord::Schema.define(version: 5) do

  create_table "members", force: :cascade do |t|
    t.string  "slug"
    t.string  "name"
    t.string  "email"
    t.string  "password"
    t.integer "team_id"
  end

  add_index "members", ["team_id"], name: "index_members_on_team_id"

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["member_id"], name: "index_posts_on_member_id"

  create_table "rule_votes", force: :cascade do |t|
    t.integer "team_id"
    t.integer "rule_id"
    t.boolean "yes?"
  end

  add_index "rule_votes", ["rule_id"], name: "index_rule_votes_on_rule_id"
  add_index "rule_votes", ["team_id"], name: "index_rule_votes_on_team_id"

  create_table "rules", force: :cascade do |t|
    t.string  "content"
    t.boolean "affirmed?"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

end
