class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    #binding.pry
    Genre.where(id: self.genre_id).first.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    #binding.pry
    drake = Artist.new(name: "Drake")
    self.artist = drake
  end
end
