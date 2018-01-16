class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.collect {|artists| artists.name}
  end
end
