class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.find_by(name: "Drake")
    if drake
      self.update(artist: drake)
    else
      drake = Artist.create(name: "Drake")
      self.update(artist: drake)
    end
    drake
  end
end
