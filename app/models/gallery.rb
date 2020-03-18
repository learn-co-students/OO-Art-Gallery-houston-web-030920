class Gallery
  attr_accessor :painting
  attr_reader :name, :city
  @@all = []

  def initialize(name, city, painting = nil)
    @name = name
    @city = city
    @painting = painting
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|p| p.gallery_name == self}
  end

  def artists
    paintings.collect{|p| p.artist_name}.uniq
  end

  def artist_name
    artists.map{|p| p.name}
  end

  def most_expensive_painting
    paintings.max_by{|p| p.price}
  end
end
