class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.count
  end

  def artist_count
    Artist.count
  end

  def all_artist_names
    artists = Artist.all
    artists.collect{|a| a.name}
  end
end
