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
    artists = []
    self.artists.each do |g|
      artists << g.name
    end
    artists
  end
end
