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

ActiveRecord::Schema.define(version: 20151013062727) do

  create_table "polymorphic_article_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.integer  "polymorphic_article_id", limit: 4
    t.integer  "polymorphic_item_id",    limit: 4
    t.string   "polymorphic_item_type",  limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "polymorphic_article_items", ["polymorphic_article_id"], name: "index_polymorphic_article_items_on_polymorphic_article_id", using: :btree
  add_index "polymorphic_article_items", ["polymorphic_item_type", "polymorphic_item_id"], name: "polyitem_type_id", using: :btree

  create_table "polymorphic_articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "polymorphic_articles", ["user_id"], name: "index_polymorphic_articles_on_user_id", using: :btree

  create_table "polymorphic_text_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "polymorphic_url_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "polymorphic_video_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sti_articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "sti_articles", ["user_id"], name: "index_sti_articles_on_user_id", using: :btree

  create_table "sti_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.integer  "sti_article_id", limit: 4
    t.string   "type",           limit: 255,   null: false
    t.text     "description",    limit: 65535
    t.string   "url",            limit: 255
    t.string   "label",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "sti_items", ["sti_article_id", "url"], name: "index_sti_items_on_sti_article_id_and_url", unique: true, using: :btree
  add_index "sti_items", ["sti_article_id"], name: "index_sti_items_on_sti_article_id", using: :btree

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "polymorphic_article_items", "polymorphic_articles"
  add_foreign_key "polymorphic_articles", "users"
  add_foreign_key "sti_articles", "users"
  add_foreign_key "sti_items", "sti_articles"
end
