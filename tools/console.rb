require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 4)
lou = Gallery.new("The Lou", "London")

starry_night = Painting.new("Starry Night", 10000000, picasso, lou)
end_of_life = Painting.new("The End", 7000000, picasso, lou)

bob_ross = Artist.new("Bobathan Ross", 1)
bob_studio = Gallery.new("Bob's House", "NYC")
hla = Painting.new("Happy Little Accidents", 60494302, bob_ross, bob_studio)

splinter = Artist.new("Master Splinter", 2)
tmnt = Painting.new("Donatello", 200000000000, splinter, lou)
binding.pry

puts "Bob Ross rules."
