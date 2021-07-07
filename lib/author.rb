class Author
  attr_reader :name
  attr_accessor :posts

  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    #add_post_by_title takes in an argument of a post title,
    #creates a new post with it and associates the post and author
    add_post(Post.new(title))
  end

  def self.post_count
    @@posts.count
  end

end
