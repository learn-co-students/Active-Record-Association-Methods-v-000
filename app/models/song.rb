class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.new(name: "Drake")
    drake.save
    drake.songs << self
    drake
    #binding.pry
  end
end
