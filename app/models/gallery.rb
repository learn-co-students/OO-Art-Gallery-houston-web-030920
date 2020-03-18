class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all #Done
    @@all 
  end

  def paintings #Done
    gallery_paintings = []
    Painting.all.each do |painting|
      if painting.gallery == self
        gallery_paintings << painting
      end
    end
    gallery_paintings
  end

  def artists
    gallery_artists = []
    Painting.all.each do |painting|
      if painting.gallery == self
        gallery_artists << painting.artist
      end
    end
    gallery_artists.uniq
  end

  def artist_names
    artist_names = []
    self.artists.each do |artist|
      artist_names << artist.name
    end
    artist_names
  end

  def most_expensive_painting
    expensive_painting = self.paintings[0]
      self.paintings.each do |painting|
        if painting.price > expensive_painting.price 
          expensive_painting = painting
        end
      end
      expensive_painting
  end

end

# * `Gallery.all`
# * Returns an `array` of all the galleries

# * `Gallery#paintings`
# * Returns an `array` of all paintings in a gallery

# * `Gallery#artists`
# * Returns an `array` of all artists that have a painting in a gallery

# * `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in a gallery

# * `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery