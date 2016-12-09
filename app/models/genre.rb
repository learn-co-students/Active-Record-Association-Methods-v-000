class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    count = 0
    self.songs.map do |s|
      count += 1
    end
    count
  end

  def artist_count
    artists = []
    self.songs.map do |s|
      artists << s.artist
    end
    artists.uniq.count
  end

  def all_artist_names
    artists = []
    self.songs.map do |s|
      artists << s.artist.name
    end
    artists.uniq
  end
end
