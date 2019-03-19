require_relative './song'
require_relative './artist'

require 'pry'

class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs = Song.all.select do |song|
      song.genre == self
    end
    songs.map do |song|
      song.song
    end
  end

  def self.all
    @@all
  end

end
