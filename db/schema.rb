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

ActiveRecord::Schema.define(version: 20200602122259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "participant_webinars", force: :cascade do |t|
    t.integer "webinar_id"
    t.integer "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "connected", default: false
  end

  create_table "participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "qualification"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ascherip", default: false
  end

  create_table "researches", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "status"
    t.string "docs"
    t.string "research"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "edit_by"
  end

  create_table "speaker_webinars", force: :cascade do |t|
    t.integer "webinar_id"
    t.integer "speaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "qualification"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "webinars", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "relatore"
    t.text "programa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

end
