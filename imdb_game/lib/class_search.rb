class Filter
	def forage(word)
		@word = word
		search = Imdb::Search.new(@word)
		movies_array = search.movies[0..14]
	end
end