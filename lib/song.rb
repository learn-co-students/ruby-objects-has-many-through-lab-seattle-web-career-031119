class Song
  attr_accessor :genre, :artist
  attr_reader :name

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self
    @@all << self
  end

  def self.all
    @@all
  end

end
