class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    artist_id = self.id
    songs = Song.where(artist_id: artist_id)
    first_song_genre_id = songs[0][:genre_id]

    Genre.find(first_song_genre_id)
  end

  def song_count
    #return the number of songs associated with the artist
    artist_id = self.id
    Song.where(artist_id: artist_id).count(:id)
  end

  def genre_count
    #return the number of genres associated with the artist
    artist_id = self.id
    Song.where(artist_id: artist_id).count(:genre_id)
  end
end
