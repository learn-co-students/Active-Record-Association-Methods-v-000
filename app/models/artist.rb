class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    # iterating was not necessary!!
    # genres = []
    # self.songs.each.with_index {|s, i| genres << s.genre unless genres.include?("s.genre")}
    # genres.count
    self.genres.count
  end
end
