require 'pry'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    # self.songs.length
    self.songs.count("id")
  end

  def genre_count
    #return the number of genres associated with the artist
    self.songs.count("genre_id")
  end
end
