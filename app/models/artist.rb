require 'pry'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    count = 0
    #return the number of genres associated with the artist
    self.songs.collect do |song|
      song.genre
      count += 1
    end
    count
  end
end
