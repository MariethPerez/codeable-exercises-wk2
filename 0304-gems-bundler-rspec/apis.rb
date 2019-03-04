require "http"

cat_json_fact = JSON.parse(HTTP.get("https://cat-fact.herokuapp.com/facts/random"))

cat_json_pic = JSON.parse(HTTP.get("https://aws.random.cat/meow"))

puts "A ramdom fact about cats is: #{cat_json_fact["text"]} And you can find a random picture here: #{cat_json_pic["file"]}"
