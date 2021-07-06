class Author
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end


  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    Post.all.length
  end

end