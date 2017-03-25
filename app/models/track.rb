class Track < ApplicationRecord
  validates :title, :import_date, :file_size, :file_name, :full_file_location, :created_at, :updated_at, :presence => true

  property :title, type: String
  property :import_date, type: Date

  property :key, type: Integer
  property :release_title, type: String
  property :genre, type: String
  property :bpm, type Decimal
  property :playtime, type: Integer
  property :bitrate, type: Integer
  property :comment, type: Text
  property :comment2, type: Text
  property :release_date, type: Date
  property :record_label, type: String
  property :file_size, type: Integer
  property :file_name, type: Text
  property :full_file_location, type: Text
  property :created_at, type: DateTime
  property :updated_at, type: DateTime
  property :playlist_id, type: Integer
  property :artist_id, type: Integer
  property :libraries_id, type; Integer

  # create_table "tracks", force: :cascade do |t|
  #   t.string   "title",              null: false
  #   t.date     "import_date",        null: false
  #   t.integer  "file_size",          null: false
  #   t.text     "file_name",          null: false
  #   t.text     "full_file_location", null: false
  #   t.datetime "created_at",         null: false
  #   t.datetime "updated_at",         null: false
  #   t.index ["artists_id"], name: "index_tracks_on_artists_id", using: :btree
  #   t.index ["libraries_id"], name: "index_tracks_on_libraries_id", using: :btree
  #   t.index ["playlists_id"], name: "index_tracks_on_playlists_id", using: :btree
  # end

end
