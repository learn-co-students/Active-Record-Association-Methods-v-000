class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    artist = Artist.create(name: "Drake")
    # .create method inintazlie and save the object for us.
    self.artist = artist
    self.artist
  end

end
