class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
     self.songs.first.genre
  end

  def song_count
    self.songs.size
  end

  def genre_count
    array = []
    self.songs.each do |x|
      if array.include?(x.genre) == false
        array << x.genre
      end
    end
    array.size
  end
end
