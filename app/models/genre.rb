class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
    # return the number of songs in a genre
  end

  def artist_count
    self.songs.all.map {|song| song.artist}.size
    # return the number of artists associated with the genre
  end

  def all_artist_names

    self.songs.all.collect {|song| song.artist.name}.uniq
    
    # return an array of strings containing every musician's name
  end
end
