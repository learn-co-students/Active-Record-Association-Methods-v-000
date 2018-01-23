class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.songs.collect do |song|
      song.artist
    end.size
  end

  def all_artist_names
    self.songs.collect do |song|
      song.artist.name
    end
  end
end
