class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.count do |artist|
      song.artist
    end
  end

  def all_artist_names
    names = []
    self.songs.each do |song|
      names << song.artist.name
    end
    names
  end
end
