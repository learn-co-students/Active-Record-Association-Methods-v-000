class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.collect {|a| a.name}
  end
end



    # artist_names = []
    # self.all.each do |g|
    #   artist_names << g.artist.name 
    # end
    # artist_names