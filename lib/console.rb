require_relative './genre.rb'
require_relative './artist.rb'
require_relative './song.rb'
require 'pry'

drake = Artist.new("Drake")
jayz = Artist.new("JayZ")
timmy = Artist.new("Timmy")


song1 = Song.new("title1", self, "rap")
song2 = Song.new("titletitletitle", self, "rap")
song3 = Song.new("Single Ladies", self, "pop")
song4 = Song.new("Song by Drake", self, "ewww")


drake.new_song("title", "rap")





binding.pry
0 #oaishfoaisfhoaifh
