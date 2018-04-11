class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this

    # if Artist.find_by(name: "Drake") == nil
    #   artist = Artist.new(name: "Drake")
    # else
    #   artist = Artist.find_by(name: "Drake")
    # end
    # self.name = artist

    artist = (Artist.find_by(name: "Drake") == nil ? Artist.new(name: "Drake") : Artist.find_by(name: "Drake"))


  end
end
