class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = []
    Artist.all.each do |artist|
      if artist.name == "Drake"
        drake << artist
      end
    end
    if drake.size > 0
      self.artist = drake[0]
    else
      self.artist = Artist.create(name: "Drake")
    end
  end
end
