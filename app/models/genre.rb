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
   all_songs=self.songs
   all_songs.collect do |song|
    song.artist.name
  end
 end
end
