class MoviesController < ApplicationController
	def home
		render("search")
	end
	def search_result
		@results = Movie.where("title ILIKE ?", "%params[:term]%")
		render("search_result")
		# redirect_to "/search_result"
	end
end
