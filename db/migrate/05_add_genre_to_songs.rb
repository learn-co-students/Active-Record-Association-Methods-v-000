class AddGenreToSongs < ActiveRecord::Migration[5.1.4]
  def change
    add_column :songs, :genre_id, :integer
  end
end
