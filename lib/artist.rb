require "pry"

class Artist

  @@all= []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.length
    # binding.pry
  end

end
