class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def paintings #Done
    artist_paintings = []
    Painting.all.each do |painting|
      if painting.artist == self
        artist_paintings << painting
      end
    end
    artist_paintings
  end

  def galleries #Done
    artist_galleries = []
    Painting.all.each do |painting|
      if painting.artist == self
        artist_galleries << painting.gallery
      end
    end
    artist_galleries.uniq
  end

  def cities #Done
    artist_cities = []
    self.galleries.each do |gallery|
      artist_cities << gallery.city
    end
    artist_cities
  end

  def self.total_experience #Done
    total = 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    prolific_artist = self.all[0]
    prolific = 0
    self.all.each do |artist|
      if ((artist.paintings.length/artist.years_experience) > prolific)
        prolific_artist = artist
        prolific = artist.paintings.length/artist.years_experience
      end
    end
    prolific_artist
  end

  def create_painting(title,price,gallery)
    new_painting = Painting.new(title,price,self,gallery)
    new_painting
  end

  def self.all #Done
    @@all
  end

end

# **ARTIST**

#   * `Artist.all`
#     * Returns an `array` of all the artists

#   * `Artist#paintings`
#     * Returns an `array` all the paintings by an artist

#   * `Artist#galleries`
#     * Returns an `array` of all the galleries that an artist has paintings in

#   * `Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in

#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists

#   * `Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

#   * `Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist