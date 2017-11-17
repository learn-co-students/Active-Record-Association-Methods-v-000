class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    arts = []
    self.songs.each do |i|
      arts << i.artist
    end
    arts.uniq.count
  end

  def all_artist_names
    artists = []
    self.songs.each do |i|
      artists << i.artist.name
    end
    artists
  end
end
