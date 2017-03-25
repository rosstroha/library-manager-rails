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

ActiveRecord::Schema.define(version: 20170314214620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "libraries_id"
    t.integer  "playlists_id"
    t.index ["libraries_id"], name: "index_artists_on_libraries_id", using: :btree
    t.index ["playlists_id"], name: "index_artists_on_playlists_id", using: :btree
  end

  create_table "libraries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "users_id"
    t.index ["users_id"], name: "index_libraries_on_users_id", using: :btree
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "libraries_id"
    t.index ["libraries_id"], name: "index_playlists_on_libraries_id", using: :btree
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "title",              null: false
    t.integer  "key"
    t.string   "release_title"
    t.string   "genre"
    t.decimal  "bpm"
    t.integer  "playtime"
    t.integer  "bitrate"
    t.text     "comment"
    t.text     "comment2"
    t.date     "import_date",        null: false
    t.date     "release_rate"
    t.string   "record_label"
    t.integer  "file_size",          null: false
    t.text     "file_name",          null: false
    t.text     "full_file_location", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "playlists_id"
    t.integer  "artists_id"
    t.integer  "libraries_id"
    t.index ["artists_id"], name: "index_tracks_on_artists_id", using: :btree
    t.index ["libraries_id"], name: "index_tracks_on_libraries_id", using: :btree
    t.index ["playlists_id"], name: "index_tracks_on_playlists_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "full_name",              limit: 255
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
