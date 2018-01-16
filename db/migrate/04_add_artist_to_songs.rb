class AddArtistToSongs < ActiveRecord::Migration[5.1.4]
  def change
    add_column :songs, :artist_id, :integer
  end
end
