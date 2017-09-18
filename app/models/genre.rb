class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    a = []
    self.songs.each do |song|
      a << song.artist
    end
    a.size
  end

  def all_artist_names
    a = []
    self.songs.each do |song|
      a << song.artist.name
    end
    a
  end
end
