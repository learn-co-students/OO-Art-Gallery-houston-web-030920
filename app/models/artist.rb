class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self 
    end
  end

  def galleries
    self.paintings.map do |p|
        p.gallery 
    end.uniq
  
  end

  def cities 
    self.galleries.map do |g|
      g.city
    end.uniq
  end 

  def self.total_experience 
    total = 0 
    self.all.each do |a|
      total += a.years_experience
    end
    total 
  end 

  def self.most_prolific 
    highest = Artist.all[0] #highest is Amrin(2/5)
    Artist.all.each do |a| #a is Amrin  
     if  a.paintings.length / a.years_experience > highest.paintings.length / highest.years_experience
      highest = a 
     end
    end 
    highest
  end 

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end 

end
