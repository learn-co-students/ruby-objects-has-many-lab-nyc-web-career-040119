require 'pry'
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def songs
    Song.all
  end
  def add_song(song)
    song.artist = self
  end
  def add_song_by_name(name)
    new = Song.new(name)
    new.artist = self
  end
  def self.song_count
    Song.all.select {|song| song.artist}.length
  end
end
