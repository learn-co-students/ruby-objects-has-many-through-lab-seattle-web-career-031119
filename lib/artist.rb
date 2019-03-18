class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def my_songs
    Song.all.select {|song| song.artist == self}
  end

  def songs
    my_songs
  end

  def genres
    my_songs.map {|song| song.genre}
  end

end
































#
#
# class Artist
#
#   attr_accessor :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#     @songs = []
#   end
#
#   def self.all
#     @@all
#   end
#
#   def new_song(name, genre)
#     new_song = Song.new(name, self, genre)
#     @songs << new_song
#   end
#
#
#   def songs
#     @songs
#   end
#
#
#   def genres
#     @songs.collect {|song| song.genre}
#   end
#
#
# end
