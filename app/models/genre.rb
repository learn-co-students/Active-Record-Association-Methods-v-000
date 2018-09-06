class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    count = 0
    # return the number of artists associated with the genre
    self.songs.collect do |songs|
      songs.artist
      count += 1
    end
    count
  end

  def all_artist_names
    artist = []
    # return an array of strings containing every musician's name
    self.songs.collect do |songs|
    artist << songs.artist.name
    end
    artist
  end
end
