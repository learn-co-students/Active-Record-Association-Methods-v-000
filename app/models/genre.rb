class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    art = self.songs.collect {|s| s.artist}.uniq
    art.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.songs.collect {|s| s.artist.name}.uniq
  end
end
