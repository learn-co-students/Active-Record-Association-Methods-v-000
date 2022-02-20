class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.size
  end

  def artist_count
    artists.size
  end

  def all_artist_names
    artists.map{|a| a.name}
  end
end
