require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    # @songs = []
    Song.all
  end

  def add_song(song)
    # binding.pry
    song.artist = self
    # Song.all << song => this was duplicating songs :/
     # binding.pry
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
    # song.artist = self
    # binding.pry
  end

  def self.song_count
    Song.all.count
    # binding.pry
  end
end
