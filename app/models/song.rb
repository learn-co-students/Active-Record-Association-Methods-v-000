class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre


  def get_genre_name
    self.genre.name
  end

# when this method is called it should assign the song's artist to Drake
  def drake_made_this
    Artist.find_or_create_by(name: "Drake").tap { |drake| self.artist = drake }
  end
end
