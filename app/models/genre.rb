class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.count(:artist_id)
  end

  def all_artist_names
    artist_names = []
    self.songs.each {|s| artist_names << s.artist.name }
    artist_names

    # more elegant:
    # self.artists.collect {|artist| artist.name}
  end
end
