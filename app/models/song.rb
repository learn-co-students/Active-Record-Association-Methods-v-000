class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    artist = Artist.new(name: "Drake")
    artist.save
    self.artist = artist
  end
end
