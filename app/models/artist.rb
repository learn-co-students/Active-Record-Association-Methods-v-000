require 'pry'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    #binding.pry
    id_genre = self.songs.all.first.genre_id
    #binding.pry
    genre = Genre.where(id: id_genre)
    genre.first
    #binding.pry
    #expected #<ActiveRecord::Relation [#<Genre id: 1, name: "Soul">]> to be a kind of Genre(id: integer, name: string)
    #genre.first.name
  end

  def song_count
    #return the number of songs associated with the artist
    Song.where(artist_id: self.id).count
    #binding.pry
  end

  def genre_count
    #return the number of genres associated with the artist
    #binding.pry
    count = self.songs.group(:genre_id).count
    count.flatten[1]
    #Genre
  end
end
