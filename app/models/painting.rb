class Painting
  attr_accessor :gallery
  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    self.class.all << self
  end

  def self.all #Done
    @@all
  end

  def self.total_price #Done
    total = 0
    self.all.each do |painting|
      total += painting.price
    end
    total
  end

end

# * `Painting.all`
# * Returns an `array` of all the paintings

# * `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings
