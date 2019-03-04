require "http"

taco_api=JSON.parse(HTTP.get("http://taco-randomizer.herokuapp.com/random/?full-taco=true"))
puts taco_api ["recipe"]


puts "Receta del Condimento"
puts taco_api["condiment"]["recipe"]


puts "Receta del Base Layer"
puts taco_api["base_layer"]["recipe"]

