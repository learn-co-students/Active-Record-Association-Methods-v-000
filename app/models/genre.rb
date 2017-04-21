class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    s_info = []
    s = self.songs
    s.each do |song|
      s_info << song

    end
    s_info.count


  end

  def all_artist_names
    # return an array of strings containing every musician's name
    a_names = []
    s = self.songs
    s.each do |song|
      a_names << song.artist.name
    end
    a_names
  end
end
