class Find
	def initialize(imdb_rating, title = nil)
		@imdb_rating = imdb_rating
		@title = title
	end
	def get_rating
		return imdb_rating
	end

end