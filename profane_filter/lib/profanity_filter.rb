class ProfanityFilter
	attr_accessor (:plot)
	def initialize(movie)
		@movie = movie
	end
	def remove_fuck(str)
		 return str.gsub("fuck", "f**k")
	end
end