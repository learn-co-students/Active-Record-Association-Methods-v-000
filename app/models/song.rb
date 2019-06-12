class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
<<<<<<< HEAD
    drake = Artist.create(name: "Drake")
    self.artist = drake
    # self.save
=======
    self.artist = Artist.new(name: "Drake")
>>>>>>> bc2e34402db5898a5214d42a344188d14fbd1e46
  end
end
