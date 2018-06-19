class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    artists = []
    self.songs.each {|song| artists << song.artist}
    artists.flatten.count
  end

  def all_artist_names
    artists_names = []
    self.songs.each {|song| artists_names << song.artist.name}
    artists_names
  end
end
