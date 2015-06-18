# require('open-uri')
require('imdb')

file = IO.read("movies.txt").split("\n")

#puts file[2]
array = []
#ratings_array = []
file.each do |title|
	search = Imdb::Search.new(title).movies
	search = search[1]
	array.push(search)
end


# array.each do | movie |  #array is an array of arrays, so change array to order the arrays by value[0] in the array
# 	rating = movie.rating
# 	ratings_array.push(rating)
# end

puts array
# array.sort_by {|b| b[0]}
sorted_array = array.sort_by &:rating#fix this line

# puts array
sorted_array.each do | i, movie |
	
	print i
	print movie.title
	print ", "
	puts movie.rating
	i = i + 1
end


#puts "#{(file)}"

# web_contents  = open('http://www.imdb.com') {|f| f.read }

#search = Imdb::Search.new(Find.new("star trek").get_rating).movies
# def read_file(title)
# 	search = Imdb::Search.new(title).movies
# end
#puts search

# puts search[0].rating






