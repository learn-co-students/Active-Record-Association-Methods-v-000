class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    artists = []
    self.songs.each do |song|
      if !artists.include?(song.artist)
        artists << song.artist
      end
    end
    artists.length
  end

  def all_artist_names
    artist_names = []
    self.artists.each do |current|
      if !artist_names.include?(current.name)
        artist_names << current.name
      end
    end
    artist_names
  end
end
