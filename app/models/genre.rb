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
    all_artists = []
    songs = self.songs
    songs.each do |song|
      all_artists << song.artist.name
    end
    all_artists
  end
end
