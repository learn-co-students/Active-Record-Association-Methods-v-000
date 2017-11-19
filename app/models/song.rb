class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # This was my working attempt ==> self.artist = Artist.create(name: "Drake")

    # The solution's code is cleaner:
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end