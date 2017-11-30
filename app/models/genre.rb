class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.length
  end

  def artist_count
    self.artists.all.length
  end

  def all_artist_names
    self.artists.all.collect {|obj| obj.name}
  end
end
