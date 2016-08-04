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

ActiveRecord::Schema.define(version: 20160804095046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "h1_tags", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "page_id"
  end

  add_index "h1_tags", ["page_id"], name: "index_h1_tags_on_page_id", using: :btree

  create_table "h2_tags", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "page_id"
  end

  add_index "h2_tags", ["page_id"], name: "index_h2_tags_on_page_id", using: :btree

  create_table "h3_tags", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "page_id"
  end

  add_index "h3_tags", ["page_id"], name: "index_h3_tags_on_page_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "url_tags", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "page_id"
  end

  add_index "url_tags", ["page_id"], name: "index_url_tags_on_page_id", using: :btree

  add_foreign_key "h1_tags", "pages"
  add_foreign_key "h2_tags", "pages"
  add_foreign_key "h3_tags", "pages"
  add_foreign_key "url_tags", "pages"
end
