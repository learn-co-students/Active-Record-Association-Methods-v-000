class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    songs.map { |s| s.artist }.uniq.count
  end

  def all_artist_names
    songs.map { |s| s.artist.name }.uniq
  end
end
