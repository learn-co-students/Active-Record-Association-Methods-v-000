class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre_id = self.genre_id
    Genre.find(genre_id).name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.create(name: "Drake")
    self.artist = drake
  end
end