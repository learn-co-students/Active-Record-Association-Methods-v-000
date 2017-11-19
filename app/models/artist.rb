class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    count = 0
    self.songs.map do |s|
      count += 1
    end
    count
  end

  def genre_count
    genres = []
    self.songs.map do |s|
      genres << s.genre
    end
    genres.uniq.count
  end
end
