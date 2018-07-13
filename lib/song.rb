
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_1 = {}
    @@genres.each do |genre|
      @@genre_1[genre] ||= 0
      @@genre_1[genre] += 1
    end
    @@genre_1
  end

  def self.artist_count
    @@artist_1 = {}
    @@artists.each do |artist|
      @@artist_1[artist] ||= 0
      @@artist_1[artist] += 1
    end
    @@artist_1
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push self.genre
    @@artists.push self.artist
  end
end