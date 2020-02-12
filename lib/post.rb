class Post
  @@all = []
  attr_accessor(:title, :author)
  
  def initialize(post_title)
    @title = post_title
    @@all << self
  end
  
  def author_name()
    if @author
      return @author.name
    else
      return nil
    end
  end
  
  def self.all()
    return @@all
  end
end