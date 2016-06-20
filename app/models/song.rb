class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # if Artist.find(name: "Drake").name == "Drake"
    #   this_artist = Artist.find(name: "Drake")
    # else
      this_artist = Artist.create(name: "Drake")
    # end
    self.artist = this_artist
  end
end