class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists.collect {|artist| artist.name}
  end
end
