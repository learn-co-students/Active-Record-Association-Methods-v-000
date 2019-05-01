class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name  
  end

  def drake_made_this
    drizzy = Artist.new(name: "Drake")
    self.artist = drizzy
  end
end