class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # when  you see a situation of
# creating empty array  _ collecting  that array - passing_in and calling the array
# recipe for .map or .collect

    contain = self.artists
    contain.map do |instance_of_artist|
      instance_of_artist.name
   end
  end

   # AN EXTRA WAY OF DOING THE SAME METHOD ON LINE. 15
  #   # return an array of strings containing every musician's name
  #   array_of_names = []
  #   contain = self.artists
  #   contain.each do |instance_of_artist|
  #       puts instance_of_artist
  #       array_of_names << instance_of_artist.name
  #
  #
  #   end
  #   array_of_names #a.k.a name
  # end

end
