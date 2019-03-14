require "pry"

class Artist
  attr_accessor :songs
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    songs << song
    song
  end

  def genres
    songs.map {|song|
      song.genre
    }
  end

  def self.all
    @@all
  end

end
