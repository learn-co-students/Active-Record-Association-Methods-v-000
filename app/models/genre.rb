class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    #could have done self.artists.size
    self.songs.count(:artist_id)
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    #could have done self.artists.collect {|artist| artist.name}

    self.songs.collect do |song|
      song.artist.name
    end
  end
end
