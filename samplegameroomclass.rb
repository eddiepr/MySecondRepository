require_relative("samplegamegameclass")

class Room
	attr_accessor :exits
	def initialize(room_number)
		@room_number = room_number	
		@message = message
	end
	def print_message		
		puts @message
	end
	def consequence
		
	end
end


