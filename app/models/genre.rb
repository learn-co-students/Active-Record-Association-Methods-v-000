require 'pry'
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    y = []
    Song.all.each do |x|
      if x.genre_id = self.id
        y << x

      end

    end
    y.length
  end

  def artist_count
    y = []
    # return the number of artists associated with the genre
    Song.all.each do |x|

      if x.genre_id = self.id
        y << x
      end
    end

    y.length
  end

  def all_artist_names
    y = []
    # return an array of strings containing every musician's name
    Song.all.each do |x|
      if x.genre_id = self.id
        y << x.artist.name
      end
    end
    y

  end
end
