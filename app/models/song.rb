class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.find_by(self.genre_id).name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.new(:name => 'Drake')
    drake.save
    id = Artist.find_by(name: 'Drake').id
    self.artist_id = id
    Artist.find_by(id: id)
  end
end
