class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count()
  end

  def genre_count
    genre_array = []
    self.songs.each do |i|
      genre_array << i.genre
    end 
    genre_array.uniq.count()
  end
end
