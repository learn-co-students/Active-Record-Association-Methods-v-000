require 'pry'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.size
  end

  def genre_count
    self.genres.count

    # song_array = self.songs.all
    # genres = song_array.each { |s| s.genre}
    # genres.size
  end
end
