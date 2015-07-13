class SiteController < ApplicationController
	def home
		@contacts = Contact.order(:created_at => :desc).limit(10)

		render 'home'	
	end
	def create

		render 'create'
	end
	def destroy

		render 'destroy'
	end
	def show_actions

		render 'show_actions'
	end
end
