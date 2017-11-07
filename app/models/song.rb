class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
    #when this method is called it returns the Genre name of the selected artist (self)
  end

  def drake_made_this
    self.create_artist(:name => "Drake")
    # when this method is called it should assign the song's artist to Drake
  end
end
