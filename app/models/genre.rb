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
    artist_list = []
    self.artists.each do |artist|
      artist_list << artist.name
    end
    artist_list
  end
end
