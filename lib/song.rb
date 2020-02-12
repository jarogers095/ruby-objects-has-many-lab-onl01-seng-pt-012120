class Song
  @@all = []
  attr_accessor(:name, :artist)
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  def artist_name()
    if @artist
      return artist.name
    else
      return nil
    end
  end
  
  def self.all()
    return @@all
  end
end