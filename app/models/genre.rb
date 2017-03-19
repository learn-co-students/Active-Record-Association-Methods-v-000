class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.group(:artist_id).size.size
  end

  def all_artist_names
    artists.group(:name).order(:id).collect { |e| e.name  }
  end
end
