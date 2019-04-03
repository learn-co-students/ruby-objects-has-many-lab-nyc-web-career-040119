require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def find_all_songs_by_artist(artist)
    Song.all.select do |song|
      song.artist == artist #self
    end
  end

  def songs
    find_all_songs_by_artist(self)
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.all.length
  end
end
