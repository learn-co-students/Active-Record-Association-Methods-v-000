class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
<<<<<<< HEAD
    self.artists.collect {|artist| artist.name}
=======
    self.artists.collect {|a| a.name}
>>>>>>> bc2e34402db5898a5214d42a344188d14fbd1e46
  end
end
