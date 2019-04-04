class Song
  attr_reader :name
  attr_accessor :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.nil? ? nil : self.artist.name
  end
end
