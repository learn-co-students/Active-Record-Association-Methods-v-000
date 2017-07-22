class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.find_or_create_by(name: "Drake")
    #=> https://apidock.com/rails/v4.0.2/ActiveRecord/Relation/find_or_create_by
    self.artist = drake
  end
end
