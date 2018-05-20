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

ActiveRecord::Schema.define(version: 20180520060054) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "tripost_id"
    t.string   "time"
    t.string   "place"
    t.string   "place_comment"
    t.string   "place_time"
    t.string   "move_by"
    t.string   "move_start"
    t.string   "move_goal"
    t.string   "move_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tripost_id"], name: "index_information_on_tripost_id", using: :btree
  end

  create_table "triposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "image"
    t.string   "title"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "theme_id"
    t.integer  "destination_id"
    t.integer  "long_id"
    t.integer  "money_id"
    t.integer  "status_id"
    t.index ["destination_id"], name: "index_triposts_on_destination_id", using: :btree
    t.index ["long_id"], name: "index_triposts_on_long_id", using: :btree
    t.index ["money_id"], name: "index_triposts_on_money_id", using: :btree
    t.index ["status_id"], name: "index_triposts_on_status_id", using: :btree
    t.index ["theme_id"], name: "index_triposts_on_theme_id", using: :btree
    t.index ["user_id"], name: "index_triposts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "information", "triposts"
  add_foreign_key "triposts", "categories", column: "destination_id"
  add_foreign_key "triposts", "categories", column: "long_id"
  add_foreign_key "triposts", "categories", column: "money_id"
  add_foreign_key "triposts", "categories", column: "status_id"
  add_foreign_key "triposts", "categories", column: "theme_id"
  add_foreign_key "triposts", "users"
end
