class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
    #alternative >> self.songs.size 
  end

  def artist_count
    # return the number of artists associated with the genre
    #self.songs.collect {|song| song.artist}.uniq.count
    self.artists.size  
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    #self.songs.collect {|song| song.artist.name}
    self.artists.collect {|artist| artist.name}
  end
end
