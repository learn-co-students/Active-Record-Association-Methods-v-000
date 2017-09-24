class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.count do |artist|
      song.artist
    end
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    names = []
    self.songs.each do |song|
      names << song.artist.name
    end
    names
  end
end
