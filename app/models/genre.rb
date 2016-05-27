class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Genre.all.first.songs.size
  end

  def artist_count
    Genre.all.first.songs.collect{|x| x.artist}.size
  end

  def all_artist_names
    Genre.all.first.songs.collect{|x| x.artist.name}
  end
end
