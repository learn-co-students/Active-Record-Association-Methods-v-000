class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    drake = Artist.create.tap{|d| d.name = "Drake"}
    drake.songs << self
    drake
  end
end
