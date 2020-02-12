class Artist
  attr_accessor(:name)
  
  def initialize(artist_name)
    @name = artist_name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
  end
  
  def songs()
    return Song.all.select{|song| song.artist == self}
  end
  
  def self.song_count()
    return 0
  end
end