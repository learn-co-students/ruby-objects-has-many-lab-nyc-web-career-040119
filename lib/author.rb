require 'pry'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def find_all_posts_by_author(author)
    Post.all.select do |post|
      post.author == author #self
    end
  end

  def posts
    find_all_posts_by_author(self)
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.length
  end
end
