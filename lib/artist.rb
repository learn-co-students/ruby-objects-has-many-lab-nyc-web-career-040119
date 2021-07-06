class Artist

  attr_accessor :name
  attr_reader :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    Song.all.length
  end

  def self.all
    @@all
  end

end