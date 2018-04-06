require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    # binding.pry
  # song_array = self.songs.all
  # artists = song_array.each { |s| s.artist}
  # artists.size
  self.artists.count
  end

  def all_artist_names
    # binding.pry
  art =  self.artists.all
  art.collect {|a| a.name}
  end
end
