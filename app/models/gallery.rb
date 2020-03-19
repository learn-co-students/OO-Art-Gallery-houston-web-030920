class Gallery
  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}.uniq
  end 

  def artist_names
    self.artists.map {|artist| artist.name}.uniq
  end 

  def most_expensive
    self.paintings.max_by {|painting| painting.price}
  end

  def self.all
    @@all
  end 

end
