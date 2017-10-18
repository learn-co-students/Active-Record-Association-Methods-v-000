class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # binding.pry
    #drake was nil for some reason.  Screenshare - no solution discovered.  Suggested that
    #I take the below line straight from seeds.rb to ensure that drake exists
    #so that code below runs
    drake = Artist.find_or_create(:name=>'Drake')
    self.artist = drake
  end
end
