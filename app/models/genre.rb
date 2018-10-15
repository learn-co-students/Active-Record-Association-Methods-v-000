class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    Song.all.map{|song| song.genre_id}.count
  end

  def artist_count
    # return the number of artists associated with the genre
    Song.all.map{|song| song.artist_id}.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    Song.all.map {|song| song.artist}.compact.map {|artist| artist.name}
  end
end
