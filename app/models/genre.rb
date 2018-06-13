class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
  	self.songs.length
  end

  def artist_count
		self.artists.count
  end

  def all_artist_names
		result = []
    self.artists.all.each do |el|
      result << el.name
    end
    result
  end
end
