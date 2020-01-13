class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    artists = self.songs.collect do |song|
                song.artist 
              end
    artists.count
  end

  def all_artist_names
    artist_names = self.songs.collect do |song|
                    song.artist.name 
                  end
  end
end
