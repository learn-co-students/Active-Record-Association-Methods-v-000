class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.artists.length
  end

  def all_artist_names
    all_artists = []
    self.artists.map {|artist| all_artists << artist.name}
    all_artists
  end
end
