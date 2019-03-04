require "http"

puts "¿Que pelicula quieres consultar?"

movie = gets.chomp

url = "http://www.omdbapi.com/?apikey=3f2a52d8&t=\"#{movie}\""

puts url

movie_json = JSON.parse(HTTP.get(url))

puts "Titulo: #{movie_json["Title"]}"
puts "Año: #{movie_json["Year"]}"
puts "Calificacion: #{movie_json["Rated"]}"
puts "Lanzamiento: #{movie_json["Released"]}"
puts "Duracion: #{movie_json["Runtime"]}"
puts "Genero: #{movie_json["Genre"]}"
puts "Director: #{movie_json["Director"]}"
puts "Actores: #{movie_json["Actors"]}"
puts "Resumen: #{movie_json["Plot"]}"