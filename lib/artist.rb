require 'pry'

class Artist
  attr_reader :name
  attr_accessor :songs

  @@songs = []

  def initialize(name)
    @name = name
    # @songs = []
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def songs
    @@songs
  end

  def add_song_by_name(name)
    #add_song_by_name takes in an argument of a song name,
    #creates a new song with it and associates the song and artist
    add_song(Song.new(name))
  end

  def self.song_count
    @@songs.count
  end
end
