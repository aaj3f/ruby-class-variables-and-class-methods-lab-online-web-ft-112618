require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

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
    hash = Hash.new
    @@genres.each do |genre|
      hash[genre] ? hash[genre] += 1 : hash[genre] = 1
    end
    hash
  end

  def self.artist_count
    hash = Hash.new
    @@artists.each do |artist|
      hash[artist] ? hash[artist] += 1 : hash[artist] = 1
    end
    hash
  end

end
