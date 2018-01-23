class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Artist.all.first.songs.all.first.genre
  end

  def song_count
    Artist.all.first.songs.size
  end

  def genre_count
    Artist.all.first.songs.collect{|x| x.genre}.size
  end
end
