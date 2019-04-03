require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end

# class Song
#   attr_accessor :name, :artist
#
#   @@all_songs = []
#
#   def initialize(name)
#     @name = name
#     @@all_songs << self
#   end
#
#   def self.all
#     @all_songs
#   end
# end
