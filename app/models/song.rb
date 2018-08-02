class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    self.artist = Artist.new(name: "Drake")
  end
end
