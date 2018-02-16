class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.length
  end

  def artist_count
    artists.length
  end

  def all_artist_names
    artist_names = Array.new
    artists.each{|artist| artist_names << artist.name}
    artist_names
  end
end
