class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
  	self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    
    self.artist = Artist.new(name: "Drake")
    # should I actually be making a new artist to accomplish this?
  end
end