class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    Genre.first.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    Genre.first.artists.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    Genre.all.collect do |g|
      g.artists.collect do |a|
        a.name
      end
    end.flatten
  end
end
