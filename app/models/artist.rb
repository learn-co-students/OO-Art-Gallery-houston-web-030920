require 'pry'

class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|p| p.title if p.artist_name == self}
  end

  def galleries
    paintings.map{|p| p.gallery_name.name}.uniq
    # ag = []
    # Painting.all.each do |p|
    #   if p.artist_name == self
    #     ag << p.gallery_name.name
    #   end
    # end
    # ag.uniq
  end

  def cities
    paintings.map{|p| p.gallery_name.city}.uniq
    # ag = []
    # Painting.all.each do |p|
    #   if p.artist_name == self
    #     ag << p.gallery_name.city
    #   end
    # end
    # ag.uniq
  end

  def self.total_experience
    self.all.collect{|a| a.years_experience}.sum
  end

  def prolific
    x = 0
    Painting.all.each do |a|
      if a.artist_name == self
        x = (a.artist_name.paintings.length)/(a.artist_name.years_experience)
      end
    end
    x
  end

  def self.most_prolific
    most_p = self.all[0] 
    self.all.each do |a|
      if a.prolific > most_p.prolific
        most_p = a.name
      end
    end
    most_p
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
