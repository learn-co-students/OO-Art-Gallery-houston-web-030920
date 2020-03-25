class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  

   def self.all
    @@all
   end

  def paintings
    arr= []
     Painting.all.each do |painting|
      if painting.artist == self
        arr << painting
      end
     end
     arr
  end

  def galleries
    arr= []
    Painting.all.each do |painting|
     if painting.artist == self
       arr << painting.gallery
     end
    end
    arr
  end

  def cities
    paintings.map do |painting|
      painting.gallery.city
    end
  end

  def self.total_experience
    total= 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    Artist.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title,price,gallery)
     Painting.new(title,price,self,gallery)
  end

end
