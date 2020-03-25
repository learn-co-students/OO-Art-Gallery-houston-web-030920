require_relative '../config/environment.rb'

a1 = Artist.new("John", 23)
a2 = Artist.new("Maria", 15)
a3 = Artist.new("Angeliki", 42)

g1= Gallery.new("Van Gogh Gallery", "Amsterdam")
g2= Gallery.new("Monet Gallery", "Paris")
g3= Gallery.new("Monet Gallery", "Paris")

p1= Painting.new("The Scream", 3400, a1, g2)
p2= Painting.new("Lilies", 5600, a3, g1)
p3= Painting.new("LMont", 3300, a2, g1)
p4= Painting.new("Nightmare", 45, a3, g2)

binding.pry

puts "Bob Ross rules."
