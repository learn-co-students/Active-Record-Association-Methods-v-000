class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
<<<<<<< HEAD
    self.songs.first.genre
=======

>>>>>>> 882c5152035f4fa1dec30745e93c32a79c0373e9
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
