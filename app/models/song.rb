class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    Artist.find_or_create_by(name: "Drake").songs << self
    self.artist
  end
end
