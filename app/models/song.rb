class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
   Artist.find_by(name: "drake") ?  self.artist = Artist.find_by(name: "Drake") : self.artist = Artist.new(name: "Drake")
  end
end
