class Song 
  attr_accessor :genre, :artist, :name
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name 
    @artist = artist 
    @genre = genre
    if @@genres.include?(genre)
      @@genre_count[genre] += 1
    else
      @@genres << genre
      @@genre_count[genre] = 1
    end 
    if @@artists.include?(artist)
      @@artist_count[artist] += 1 
    else
      @@artist_count[artist] = 1
      @@artists << artist
    end 
  end 
  def self.count 
    @@count 
  end
  def self.artists
    @@artists 
  end 
  def self.genres 
    @@genres 
  end
  def self.genre_count
    @@genre_count
  end 
  def self.artist_count
    @@artist_count
  end
end

#pennyroyal_tea = Song.new("Pennyroyal Tea", "Nirvana", "Grunge")
#in_bloom = Song.new("In Bloom", "Nirvana","Grunge")
#fix_me = Song.new("Fix Me", "Garbage", "Rock")
#turtles_all_the_way_down = Song.new("Turtles All The Way Down", "Sturgill Simpson", "Country")
#p Song.genres
#p Song.artists 
#p Song.genre_count

