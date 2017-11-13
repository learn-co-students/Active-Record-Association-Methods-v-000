class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name

    #binding.pry
  end

  def drake_made_this
    #binding.pry
    # when this method is called it should assign the song's artist to Drake

      drake = Artist.find_or_create_by(name: "Drake")
      self.artist = drake
  end
end
