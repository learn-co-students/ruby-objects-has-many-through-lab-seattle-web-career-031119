require "pry"
require_relative "./song"
require_relative "./genre"

class Artist

attr_accessor :name, :genres, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @genres = []
  @@all << self
end

def self.all
  @@all
end

def new_song(name, genre)
  song = Song.new(name, self.name, genre)
  @songs << song
  @genres << genre
  song.artist = self
  # binding.pry
  song
end

end
