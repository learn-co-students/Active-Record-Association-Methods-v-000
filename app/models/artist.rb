require 'pry'
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = self.songs.first
    song.genre
    #return the genre of the artist's first saved song
  end

  def song_count
    self.songs.count
    #return the number of songs associated with the artist
  end

  def genre_count
    genres = self.genres
    array = []
    genres.each do |genre|
      array << genre.name
    end
    array.uniq.count
    #return the number of genres associated with the artist
  end
end
