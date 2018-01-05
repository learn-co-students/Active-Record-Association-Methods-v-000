class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.length
  end

  def artist_count
    # return the number of artists associated with the genre
    artists = []
    self.songs.each do |song|
      artists << song.artist if song.artist
    end
    artists.uniq.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists = []
    self.songs.each do |song|
      artists << song.artist.name if song.artist
    end
    artists.uniq
  end
end
