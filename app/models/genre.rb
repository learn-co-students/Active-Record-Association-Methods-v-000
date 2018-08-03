class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.size
  end

  def all_artist_names
    array = []
    self.artists.each do |x|
      if array.include?(x.name) == false
        array << x.name
      end
    end
    array
  end
end
