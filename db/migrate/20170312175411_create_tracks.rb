class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :key
      t.string :release_title
      t.string :genre
      t.decimal :bpm
      t.integer :playtime
      t.integer :bitrate
      t.text :comment
      t.text :comment2
      t.date :import_date, null: false
      t.date :release_rate
      t.string :record_label
      t.integer :file_size, null: false
      t.text :file_name, null: false
      t.text :full_file_location, null: false

      t.timestamps
    end

    add_reference :tracks, :playlists
    add_reference :tracks, :artists
    add_reference :tracks, :libraries
  end
end
