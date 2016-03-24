class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
    #return the genre of the artist's first saved song
  end

  def song_count
    count = 0
    self.songs.each {|song|
      count += 1
    }
    count
    #return the number of songs associated with the artist
  end

  def genre_count
    count = 0
    self.genres.each {|genre|
      count += 1
    }
    count
    #return the number of genres associated with the artist
  end
end
