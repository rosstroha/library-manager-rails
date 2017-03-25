class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name

      t.timestamps
    end

    add_reference :artists, :libraries
    add_reference :artists, :playlists
  end
end
