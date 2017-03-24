class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    obj_arr = self.artists
    name_arr = []
    obj_arr.each { |artist| name_arr << artist.name }
    name_arr
  end
end
