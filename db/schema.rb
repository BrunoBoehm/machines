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

ActiveRecord::Schema.define(version: 20170128160801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "site_url"
    t.text     "description"
    t.text     "imgs"
    t.text     "seo_text"
    t.text     "seo_keywords"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "youtube_url"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.text     "seo_text"
    t.text     "seo_keywords"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "productranges", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.text     "imgs"
    t.text     "seo_text"
    t.text     "seo_keywords"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "brand_id"
    t.integer  "sub_category_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "imgs"
    t.text     "short_description"
    t.text     "long_description"
    t.string   "material"
    t.text     "specs"
    t.text     "options"
    t.text     "video_links"
    t.text     "tip"
    t.text     "pdfs"
    t.text     "seo_text"
    t.text     "seo_keywords"
    t.text     "links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "productrange_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.text     "seo_text"
    t.text     "seo_keywords"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "category_id"
  end

end
