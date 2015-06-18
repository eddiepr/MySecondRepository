require('open-uri')
require('imdb')

file = IO.read("movies.txt")
#puts "#{(file)}"

# web_contents  = open('http://www.imdb.com') {|f| f.read }

search = Imdb::Search.new("Star Trek").movies
#puts search

puts search[0].rating


