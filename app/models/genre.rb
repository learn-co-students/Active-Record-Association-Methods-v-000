class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = self.songs.collect do |song|
      song.artist
    end
    artists.uniq.size
  end

  def all_artist_names
    artists = self.songs.collect do |song|
      song.artist.name
    end
    artists.uniq
  end
end
