require_relative '../config/environment.rb'


isaac = Artist.new("isaac", 10)
jeff = Artist.new("Jeff", 5)
john = Artist.new("John", 2)
gal1 = Gallery.new("Gal 1", "Houston")
gal2 = Gallery.new("Gal 2", "Miami")
p_1 = Painting.new("P 1", 100, isaac, gal1)
p_2 = Painting.new("P 2", 200, isaac, gal2)
p_3 = Painting.new("P 3", 300, john, gal2)
p_4 = Painting.new("P 4", 400, jeff, gal1)
p_5 = Painting.new("P 5", 500, isaac, gal1)

binding.pry

puts "Bob Ross rules."
