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

ActiveRecord::Schema.define(version: 20160221005738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "app_id"
    t.string   "video_type"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "applications", ["platform_id"], name: "index_applications_on_platform_id", using: :btree

  create_table "brand_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "catalog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brand_platforms", force: :cascade do |t|
    t.integer  "brand_id"
    t.integer  "platform_id"
    t.string   "ep"
    t.string   "pname"
    t.string   "suite"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "ssid"
  end

  add_index "brand_platforms", ["brand_id"], name: "index_brand_platforms_on_brand_id", using: :btree
  add_index "brand_platforms", ["platform_id"], name: "index_brand_platforms_on_platform_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "owner"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "brand_group_id"
  end

  add_index "brands", ["brand_group_id"], name: "index_brands_on_brand_group_id", using: :btree

  create_table "configs", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "settings"
    t.integer  "brand_id"
    t.integer  "platform_id"
    t.integer  "pmt_player_id"
    t.integer  "brand_platform_id"
  end

  add_index "configs", ["brand_id"], name: "index_configs_on_brand_id", using: :btree
  add_index "configs", ["brand_platform_id"], name: "index_configs_on_brand_platform_id", using: :btree
  add_index "configs", ["platform_id"], name: "index_configs_on_platform_id", using: :btree
  add_index "configs", ["pmt_player_id"], name: "index_configs_on_pmt_player_id", using: :btree

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.string   "platform"
    t.string   "query_string_key"
    t.string   "default_value"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.string   "device"
    t.string   "env"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pmt_players", force: :cascade do |t|
    t.string   "mgid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "brand_id"
  end

  add_index "pmt_players", ["brand_id"], name: "index_pmt_players_on_brand_id", using: :btree

  create_table "recommendations", force: :cascade do |t|
    t.string   "overrides"
    t.integer  "config_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recommendations", ["config_id"], name: "index_recommendations_on_config_id", using: :btree

  add_foreign_key "applications", "platforms"
  add_foreign_key "brands", "brand_groups"
  add_foreign_key "configs", "brand_platforms"
  add_foreign_key "configs", "brands"
  add_foreign_key "configs", "platforms"
  add_foreign_key "configs", "pmt_players"
  add_foreign_key "pmt_players", "brands"
  add_foreign_key "recommendations", "configs"
end
