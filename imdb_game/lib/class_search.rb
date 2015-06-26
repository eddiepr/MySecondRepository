require ("imdb")

class Filter
	attr_accessor :posters_array
	def forage(word)
		@word = word
		search = Imdb::Search.new(@word)
		movies_array = search.movies[0..14]
		@posters_array = movies_array.map do |movie|
			movie.poster
		end
	end
end