class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = self.songs.find(1)
    song.genre
  end

  def song_count
    self.songs.all.length
  end

  def genre_count
    genres = []
    self.songs.each do |song|
      genres << song.genre if song.genre
    end
    genres.uniq.length
  end

end
