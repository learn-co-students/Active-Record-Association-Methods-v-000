class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    artists.count
  end

  def all_artist_names
    array = []
    artists.each {|x| array << x.name}
    array
  end
end
