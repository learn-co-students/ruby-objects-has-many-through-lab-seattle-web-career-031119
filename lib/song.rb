class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end





























# class Song
#
#   attr_accessor :artist, :name, :genre
#
#   @@all = []
#
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@all << self
#   end
#
#   def self.all
#     @@all.each {|song_info|
#     puts song_info.name}
#   end
#
#
#
# end
