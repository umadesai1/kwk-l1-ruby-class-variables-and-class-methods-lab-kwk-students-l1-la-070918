class Song
attr_accessor :name, :artists, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name,artists,genre)
@name = name
@artist = artist
@genre = genre
@@count +=1 
@@genres << genres 
@@artists << artists 
end

def self.count 
  @@count 
end 