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

ActiveRecord::Schema.define(version: 20140430043318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appellations", force: true do |t|
    t.string   "name",       null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheeses", force: true do |t|
    t.string   "name",              null: false
    t.string   "country_of_origin"
    t.string   "region"
    t.string   "milk"
    t.string   "texture_type"
    t.string   "color"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheeses_traits", force: true do |t|
    t.integer  "cheese_id"
    t.integer  "trait_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheeses_wines", force: true do |t|
    t.integer  "cheese_id"
    t.integer  "wine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grapes", force: true do |t|
    t.string   "varietal",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits_wines", force: true do |t|
    t.integer  "wine_id"
    t.integer  "trait_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wineries", force: true do |t|
    t.string   "name",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "appellation_id", null: false
    t.integer  "region_id",      null: false
  end

  create_table "wines", force: true do |t|
    t.integer  "vintage",             null: false
    t.integer  "winery_id",           null: false
    t.integer  "grape_id",            null: false
    t.integer  "alcohol_percentage"
    t.integer  "serving_temperature"
    t.integer  "sweetness"
    t.integer  "acidity"
    t.integer  "tanin"
    t.integer  "fruit"
    t.integer  "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_type",       null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
