class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.length
  end

  def artist_count
    # return the number of artists associated with the genre
    artist_ids = self.songs.collect { |s| s.artist_id }
    artist_ids.uniq.length
  end

  def all_artist_names
    self.songs.collect { |s| s.artist.name }
  end
end
