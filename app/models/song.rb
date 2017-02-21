class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    if Artist.exists?(name: "Drake")
      drake = Artist.find_by name: "Drake"
      drake.songs << self
    else
      drake = Artist.new(name: "Drake")
      drake.songs << self
    end
    self.artist
  end
end
