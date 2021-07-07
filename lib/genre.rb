class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_genre_songs
    Song.all.select {|song| song.genre == self}
  end

  def songs
    my_genre_songs
  end

  def artists
    my_genre_songs.map {|song| song.artist}
  end

end




























# class Genre
#
#   attr_accessor :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << name
#   end
#
#   def self.all
#     @@all
#   end
#
#
#   def songs
#     Song.all.collect {|song|
#       song.genre = self.genre
#     }
#   end
#
# end
