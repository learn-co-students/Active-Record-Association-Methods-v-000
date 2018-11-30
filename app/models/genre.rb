class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    artist_list = []
    self.songs.each{|s| artist_list << s.artist unless artist_list.include? s.artist }
    artist_list.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_list = []
    artist_names =[]
    self.songs.each{|s| artist_list << s.artist unless artist_list.include? s.artist }
    artist_list.each{ |a| artist_names << a.name }
    artist_names
  end
end
