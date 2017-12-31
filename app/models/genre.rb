class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    artists = []
    self.songs.each{|s| artists << s.artist}
    artists.uniq.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists = []
    self.songs.each{|s| artists << s.artist.name}
    artists.uniq
  end
end
