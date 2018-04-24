class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artist_array = []
    self.songs.each do |song|
      artist_array << song.artist
    end
    artist_array.size

  end

  def all_artist_names
    artist_array = []
    self.songs.each do |song|
      artist_array << song.artist.name
    end
    artist_array
  end
end
