<<-RUBY
lala = Song.new(:name => "Lala")
lala.save
fala = Song.new(:name => "Fala")
fala.save
dede = Song.new(:name => "Dede")
dede.save
doda = Song.new(:name => "Doda")
doda.save
bolo = Song.new(:name => "bolo")
bolo.save

frank = Artist.new(:name => "Francho Roussou")
frank.save
yacov = Artist.new(:name => "Ya'acov Jacsenovitch")
yacov.save

lala.artist = frank
lala.save
fala.artist = frank
fala.save
dede.artist = frank
dede.save
doda.artist = yacov
doda.save
bol.artist = yacov
bolo.save

yacov.songs << Song.new(:name => "This Method is Inefficient")
yacov.songs.build(:name => "More Efficient Method")
yacov.save

new_artist_for_song_8 = song.build_artist(:name => "Artist 6")
RUBY
