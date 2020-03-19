require_relative '../config/environment.rb'



pablo = Artist.new("Pablo Picasso", 42)
dali = Artist.new("Salvador Dali", 37)
moma = Gallery.new("MOMA", "New York City")
noma = Gallery.new("NOMA", "New Orleans")
starry_night = Painting.new("Starry Starry Night", 400000, pablo, moma)
elephants = Painting.new("The Elephants", 35000, dali, noma)
# self_portrait = Painting.new("Self-Portrait", 100000, pablo, noma)
self_portrait = Painting.new("Self-Portrait", 120000, dali, moma)
binding.pry

puts "Bob Ross rules."
