class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.genres.first
  end
    #return the genre of the artist's first saved song

  def song_count
    self.songs.size
  end
    #return the number of songs associated with the artist

  def genre_count
    self.genres.size
  end
    #return the number of genres associated with the artist
end
