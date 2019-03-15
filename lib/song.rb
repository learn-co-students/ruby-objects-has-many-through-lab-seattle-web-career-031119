class Song
  attr_accessor :artist, :song, :genre

  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@all << self
  end

  @@all = [ ]

  def self.all
    @@all
  end

end
