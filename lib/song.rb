require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    @@artists << self.artist 
    self.genre = genre
    @@genres << self.genre
    @@count += 1
    
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq {|art| art}
  end
  
  def self.genres
    @@genres.uniq {|g| g}
  end
  
  def self.genre_count
    return_hash = {}
    @@genres.each { |g|
      return_hash[g] = @@genres.count(g)
    }
    return_hash
  end
  
   def self.artist_count
    return_hash = {}
    @@artists.each { |art|
      return_hash[art] = @@artists.count("#{art}")
    }
    return_hash
  end
  
end