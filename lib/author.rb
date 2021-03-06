class Author
  attr_accessor(:name)
  
  def initialize(author_name)
    @name = author_name
  end
  
  def add_post(post_object)
    post_object.author = self
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end
  
  def posts()
    return Post.all.select{|a_post| a_post.author == self}
  end
  
  def self.post_count()
    return Post.all.select{|a_post| a_post.author != nil}.size
  end
end