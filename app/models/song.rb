class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    binding.pry
    genre.name
  end

  def drake_made_this
    # binding.pry
  end
end
