require "pry"

class Post
  attr_reader :title
  attr_accessor :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    #author_name returns nil if the post does not have an author
    self.author.nil? ? nil : self.author.name
  end
end
