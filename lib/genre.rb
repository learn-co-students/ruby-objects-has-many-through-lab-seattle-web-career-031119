require "pry"
require_relative "./song"
require_relative "./artist"

class Genre

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = []
  @artists = []
end

def self.all
  @@all
end

def songs
  Song.all.select {|song| song.genre == self }
end

def artists
  self.songs.collect {|song| song.artist }
end

end
