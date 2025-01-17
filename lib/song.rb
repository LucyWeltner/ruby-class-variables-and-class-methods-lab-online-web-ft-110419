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
      @@genres << genre
    else
      @@genres << genre
      @@genre_count[genre] = 1
    end 
    if @@artists.include?(artist)
      @@artist_count[artist] += 1
      @@artists << artist
    else
      @@artist_count[artist] = 1
      @@artists << artist
    end 
  end 
  def self.count 
    @@count 
  end
  def self.artists
    unique_array = []
    unique = true
    i = 0 
    j = 0 
    while i < @@artists.length do 
      while j < @@artists.length do
        if @@artists[i] == @@artists[j]
          unique = false
        end
        j += 1
      end
      if unique == true
        unique_array << @@artists[i]
      end 
      i += 1 
      unique = true
    end
    unique_array 
  end 
  def self.genres
    unique_array = []
    unique = true
    i = 0 
    j = 0 
    while i < @@genres.length do 
      while j < @@genres.length do
        if @@genres[i] == @@genres[j]
          unique = false
        end
        j += 1
      end
      if unique == true
        unique_array << @@genres[i]
      end 
      i += 1 
      unique = true
    end
    unique_array
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

lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
