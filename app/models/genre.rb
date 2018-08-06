class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.count(:artist_id)
  end

  def all_artist_names
    self.songs.select(:name)
    # return an array of strings containing every musician's name
  end
end
