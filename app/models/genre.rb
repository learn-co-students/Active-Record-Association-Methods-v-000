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
    artist_name_list = []
    self.artists.each do |a|
      artist_name_list << a.name
    end
    return artist_name_list
  end
end
