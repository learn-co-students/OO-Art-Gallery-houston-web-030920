require_relative '../config/environment.rb'

a1 = Artist.new("Amrin", 5)
a2 = Artist.new("Faizah", 1)
a3 = Artist.new("Melike", 4)

g1 = Gallery.new("Art World","Houston")
g2 = Gallery.new("Art Museum","Dallas")

p1 = Painting.new("Flower", 400, a1, g2)
p2 = Painting.new("Abstract", 1000, a2, g1)
p3 = Painting.new("lifestyle", 500, a1, g1)



binding.pry


