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

ActiveRecord::Schema.define(version: 2019_08_27_191613) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "property_id"
    t.index ["property_id"], name: "index_cities_on_property_id"
  end

  create_table "cms", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ranking"
  end

  create_table "dictionaries", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key", "language"], name: "index_dictionaries_on_key_and_language", unique: true
  end

  create_table "menus", force: :cascade do |t|
    t.string "key"
    t.string "url"
    t.string "place"
    t.integer "ranking"
    t.integer "cm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cm_id"], name: "index_menus_on_cm_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "price"
    t.string "name"
    t.integer "size"
    t.integer "top"
    t.string "ad_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
  end

  create_table "property_type_connections", force: :cascade do |t|
    t.integer "properties_id"
    t.integer "property_types_id"
    t.index ["properties_id"], name: "index_property_type_connections_on_properties_id"
    t.index ["property_types_id"], name: "index_property_type_connections_on_property_types_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "property_id"
    t.index ["property_id"], name: "index_property_types_on_property_id"
  end

  create_table "user_meta", force: :cascade do |t|
    t.string "key", null: false
    t.string "value", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_meta_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

end
