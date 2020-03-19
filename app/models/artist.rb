class Artist

	attr_accessor :name, :years_experience

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
		Painting.all.select {|painting| painting.artist == self} 
	end

	def galleries
		self.paintings.map {|paintings| paintings.gallery}.uniq
	end

	def cities
		self.galleries.map {|gallery| gallery.city}.uniq
	end

	def self.total_experience
		self.all.map {|artist| artist.years_experience}.sum
	end

	def self.most_prolific
		self.all.max_by do |artist| 
			artist.years_experience / artist.paintings.count 
		end
	end

	def create_painting(title, price, gallery)
		Painting.new(title, price, self, gallery)
	end
end


