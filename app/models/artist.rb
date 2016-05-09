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
    self.genres.count
  end
end

# class Artist < ActiveRecord::Base
#   has_many :songs
#   has_many :genres, through: :songs
# 
#   def get_genre_of_first_song
#     #return the genre of the artist's first saved song
#     self.songs.genre.first
#   end
# 
#   def song_count
#     #return the number of songs associated with the artist
#     self.songs.count
#   end
# 
#   def genre_count
#     #return the number of genres associated with the artist
#     genres.count
#   end
# end
