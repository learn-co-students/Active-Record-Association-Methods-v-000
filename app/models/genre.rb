class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    name_box = []
    counter = 0
    self.artists.each do |artist|
      name_box[counter] = artist.name
      counter += 1
    end
    name_box
  end
end
