require_relative './artist'
require_relative './genre'

require 'pry'

class Song

  @@all = []

  attr_reader :song,:genre
  attr_accessor :artist

  def initialize(artist,song_name,genre)
    @artist = artist
    @song = song_name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
