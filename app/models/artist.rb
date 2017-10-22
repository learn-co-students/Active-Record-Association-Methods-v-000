class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    Artist.find(1).genres.first
  end

  def song_count
    #return the number of songs associated with the artist
    Artist.find(1).songs.size
  end

  def genre_count
    #return the number of genres associated with the artist
    Artist.find(1).genres.size
  end
end
