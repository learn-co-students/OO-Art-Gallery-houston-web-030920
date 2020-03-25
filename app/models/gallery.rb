class Gallery
@@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  

  def self.all
    @@all
  end

  def paintings
    arr = []
    Painting.all.each do |painting|
      if painting.gallery == self
        arr << painting
      end
    end
    arr
  end

  def artists
    array =[]
    paintings.each do |paint|
      array << paint.artist
    end
    return array
  end

  def artist_names
    arr= []
     artists.each do |a|
      arr << a.name
     end
     arr
  end

  def most_expensive_painting
    paintings.max_by do |painting|
      painting.price
    end
  end


end
