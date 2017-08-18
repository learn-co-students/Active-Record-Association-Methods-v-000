class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    new_array = []
    self.artists.each do |t|
        new_array << t.name
    end
    new_array
  end
end
