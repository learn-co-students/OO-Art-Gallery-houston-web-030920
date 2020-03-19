require_relative '../config/environment.rb'

# Artists
picasso = Artist.new("Pablo Picasso", 80)
monet = Artist.new("Claude Monet", 46)
ross = Artist.new("Bob Ross", 35)

# Galleries
cool_gallery = Gallery.new("Cool Gallery", "Houston")
rad_gallery = Gallery.new("Rad Gallery", "Seattle")
chill_gallery = Gallery.new("Chill Gallery", "Montreal")

# Paintings

the_old_guitarist = Painting.new("The Old Guitarist", 100000000, picasso, cool_gallery)
the_weeping_woman = Painting.new("The Weeping Woman", 16000000, picasso, cool_gallery)
self_portrait = Painting.new("Self-Portrait", 67500000, picasso, cool_gallery)
guernica = Painting.new("Guernica", 200000000, picasso, rad_gallery)
the_water_lily_pond = Painting.new("The Water Lily Pond", 43700000, monet, cool_gallery)
poppies = Painting.new("Poppies", 110700000, monet, rad_gallery)
sunrise = Painting.new("Impression, Sunrise", 110700000, monet, chill_gallery)
the_old_mill = Painting.new("The Old Mill", 8000, ross, chill_gallery)
alaskan_waterfall = Painting.new("Alaskan Waterfall", 13000, ross, chill_gallery)









binding.pry

puts "Bob Ross rules."
