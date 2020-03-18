class Painting
  attr_reader :title, :price, :artist_name, :gallery_name

  @@all = []

  def initialize(title, price, artist_name, gallery_name)
    @title = title
    @price = price
    @artist_name = artist_name
    @gallery_name = gallery_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.collect{|p| p.price}.sum
  end
end
