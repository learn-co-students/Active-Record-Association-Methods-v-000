class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    drake  = Artist.first_or_create name: "Drake"
    artist = drake
  end
end
