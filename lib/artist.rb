
require_relative './song'
require_relative './genre'

require 'pry'


class Artist

  @@all = []

  attr_reader :all,:name
  attr_accessor :new_song

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name,genre)
    Song.new(self,song_name,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs = Song.all.select do |song|
      song.artist == self
    end
    songs.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
