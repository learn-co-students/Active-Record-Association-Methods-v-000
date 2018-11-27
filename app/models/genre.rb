class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs = songs
    songs.count
  end

  def artist_count
    self.artists = artists
    artists.count
  end

  def all_artist_names
    self.artists = artists
    artists.collect do |artist|
      artist.name
    end
  end
end
