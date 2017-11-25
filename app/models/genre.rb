class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  @@artists_list = []

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.each { |song| @@artists_list << song.artist}
    @@artists_list.uniq.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
      artists_names = []
      self.artists.each { |artist| artists_names << artist.name }
      artists_names
  end
end
