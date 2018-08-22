class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    #binding.pry

    artist_Drake = Artist.find_by(name: "Drake") || Artist.create(name: "Drake")

    self.artist = artist_Drake

  end
end
