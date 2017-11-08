class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.size
  end

  def artist_count
    self.artists.all.size
  end

  def all_artist_names
    self.artists.all.map do |a|
      a.name
    end
  end
end
