require_relative("samplegamegameclass")

class Room < Consequence
	attr_accessor :exits
	def initialize(room_number, message)
		@room_number = room_number	
		@message = message
	end
	def print_message		
		puts @message
	end
	def consequence
		if 
	end
end


