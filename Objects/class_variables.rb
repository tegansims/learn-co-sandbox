class Song
 
  @@all = []
 
  attr_accessor :name, :artist
 
  def initialize(name, artist)
    @name = name
    @artist = artist 
    @@all << self
  end
  
  def self.show_all
    p @@all
  end
end

thriller = Song.new("Thriller", "MJ")
jaws = Song.new("not really", "it's a film")

Song.show_all