class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    genre_array = []
    self.songs.all.map do |song|
      genre_array << song.genre_id
    end
    genre_array.size
  end
end
