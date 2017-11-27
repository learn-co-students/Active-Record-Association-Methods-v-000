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
    artist_list = []
    self.artists.each {|artist| artist_list << artist.name}
    artist_list
  end
end
