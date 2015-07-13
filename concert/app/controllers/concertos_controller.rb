class ConcertosController < ApplicationController
	
	# def index
	# 	now = DateTime.now
	# 	@con = Concert.find params[:concert_id]
	# 	# something else here
	# end

	def new
		@con = Concerto.new()
		@cons = Concerto.retrieve
		render ("new")
	end

	def create
		@con = Concerto.new(info_params)
		if @con.save
			redirect_to(concertos_path)
		else
			render("new")
		end
	end

	def show
		render("show")
	end

	def index 
		@cons = Concerto.retrieve
		
		render("index")
	end

	def info_params
		return params.require(:concerto).permit(:artist, :date, :venue, :city, :ticket_price, :description)
	end

	def home
		@cons_today = Concerto.retrieve_today
		render("home")
	end

	def concert_info
		render("concert_info")
	end
end
