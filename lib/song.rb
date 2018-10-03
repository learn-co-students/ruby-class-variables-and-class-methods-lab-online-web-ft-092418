class Song
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    
    
    @@genres.push(genre)
   
    
    
    @@artists.push(artist)
    
    
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end
  
  def  self.genre_count
    genre_hash={}
    @@genres.each do |genre|
    genre_hash[genre]=  @@genres.count(genre)
    end
    genre_hash
  end
  
    def  self.artist_count
    artist_hash={}
    @@artists.each do |artist|
    artist_hash[artist]=  @@artists.count(artist)
    end
    artist_hash
  end
  
 
end