class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
<<<<<<< HEAD
    self.songs.first.genre
=======
    self.genres.first
>>>>>>> bc2e34402db5898a5214d42a344188d14fbd1e46
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end
