class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_array = []
    full_list = self.artists
    full_list.map do |i|
      artist_array << i.name
    end
    artist_array
  end
end
