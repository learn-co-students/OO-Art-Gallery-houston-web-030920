class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings_per_year
    self.paintings.length.to_f / years_experience.to_f
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.sum 
  end 

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings_per_year} 
  end

  def self.all
    @@all
  end 

end
