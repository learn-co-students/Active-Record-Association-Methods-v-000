class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    artists = []
    self.artists.each {|artist|
      artists << artist.name
    }
    artists
    # return an array of strings containing every musician's name
  end
end
