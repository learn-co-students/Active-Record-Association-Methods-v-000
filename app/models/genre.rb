class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    genre_artists = self.artists
    genre_artists.collect { |artist| artist.name }
  end
end
