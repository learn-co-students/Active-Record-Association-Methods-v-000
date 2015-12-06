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
    ists = []
    art = self.artists
    art.each do |a|
      ists << a.name
    end
    ists
  end
end
