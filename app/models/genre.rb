class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.all_artist_names.uniq.size
  end

  def all_artist_names
    self.songs.collect {|s| s.artist.name}
  end
end
