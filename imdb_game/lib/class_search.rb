require ("imdb")

class Filter
	attr_accessor :posters
	def forage(movies)
		@poster_movies = []
		movies.each do |movie|
			if movie.poster != nil
				@poster_movies.push(movie)
			end
		end
		puts "MOVIES #{movies.size}"
		puts "POSTER MOVIES #{@poster_movies.size}"
	end
	def cut
		@nine = @poster_movies[0..8]
		@posters = @nine.map do |movie|
			movie.poster
		end
	end
end