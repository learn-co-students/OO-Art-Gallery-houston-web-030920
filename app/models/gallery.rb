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
    Painting.all.select do |p|
      p.gallery == self
    end
  end

  def artists
    paintings = Painting.all.select do |p|
      p.gallery == self 
    end 
    paintings.map do |p|
        p.artist
    end 

  end 
  
  def artist_names 
  
    self.artists.map  {|a|a.name}

  end

  def most_expensive_painting
    most_expensive = self.paintings[0]
    self.paintings.each do |p|
     if  p.price > most_expensive.price 
      most_expensive = p
     end 
    end
    most_expensive
  end 


end
