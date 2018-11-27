class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.genres = genres
    genres.first
  end

  def song_count
    self.songs = songs
    songs.count
  end

  def genre_count
    self.genres = genres
    genres.count
  end
end
