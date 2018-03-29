class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
    # return the number of songs in a genre
  end

  def artist_count
    artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    artists.collect do |a|
      a.name
    end  
    # return an array of strings containing every musician's name
  end
end
