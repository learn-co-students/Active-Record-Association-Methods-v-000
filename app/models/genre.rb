class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.artists.length
  end

  def all_artist_names
    artist_names = []
    Artist.all.each do |artist|
      artist_names << artist.name
    end
    artist_names
  end
end
