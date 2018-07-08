class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.map { |s|
    s.artist  }.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map { |n|
    n.name  }
  end
end
