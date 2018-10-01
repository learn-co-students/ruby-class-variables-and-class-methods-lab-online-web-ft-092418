require 'pry' 

class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    genres = []
    @@genres.each do |g|
      genres << g if !genres.include?(g)
    end 
    genres 
  end 
  
  def self.artists 
    clArtists = []
    @@artists.each do |a|
      clArtists << a if !clArtists.include?(a)
    end 
    clArtists
  end 
  
  def self.genre_count
    genreHash = {}
    
    @@genres.each do |g| 
      if genreHash[g]
        genreHash[g] += 1 
      else 
        genreHash[g] = 1 
      end
    end 
    genreHash
  end
  
  def self.artist_count
    artistHash = {}
    
    @@artists.each do |a| 
      if artistHash[a]
        artistHash[a] += 1 
      else 
        artistHash[a] = 1 
      end
    end 
    artistHash
  end 
  
end 