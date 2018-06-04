class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.map {|song| song.artist}.count    # return the number of artists associated with the genre
  end

  def all_artist_names
    artists_array = self.songs.map {|song| song.artist.name}
  end
end
