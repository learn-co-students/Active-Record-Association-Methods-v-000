class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    counter = []
    self.songs.each do |song|
      counter << song.artist
    end
    counter.length   
  end

  def all_artist_names
    self.songs.collect do |song|
      song.artist.name
    end 
  end

end
