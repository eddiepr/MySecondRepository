class ShortenersController < ApplicationController
	def link
		redirect_to params[:url]
	end
end
