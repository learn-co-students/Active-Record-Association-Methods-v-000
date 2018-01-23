class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    genre_id = self.id
    Song.where(genre_id: genre_id).count(:id)
  end

  def artist_count
    # return the number of artists associated with the genre
    genre_id = self.id
    Song.where(genre_id: genre_id).count(:artist_id)
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    genre_id = self.id
    songs = Song.where(genre_id: genre_id)

    artist_names = songs.collect do |song|
      artist_id = song.artist_id
      artist_name = Artist.find(artist_id).name
    end
  end
end
