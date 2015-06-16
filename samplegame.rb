require_relative("samplegameroomclass")
require_relative("samplegamegameclass")

class Room
	attr_accessor :room_number
	def initialize(room_number)
		@room_number = room_number	
	end
	def print_message		

	end
	def consequence
		if 
	end
end


array = ["You are in the forest. There is a lot of light. There is a bear sleeping.", ""]

room1 = Room.new(["N"])
room2 = Room.new(["E", "W"])

puts "You are in a dark room. There is a door to the north.  Type a direction(N,S,E, or W) to go that direction"
puts ">"
direction = gets.chomp
if room1.exits.include? direction 
	puts "You are in the forest. There is a lot of light. There is a bear sleeping."
else 
	puts "There is no exit in that direction"
end


room1 = {:initial_message "You are in a dark room. There is a door to the north.  Type a direction(N,S,E, or W) to go that direction", exits: ["N"]}
room2 = {:initial_message "You are in the forest.  There is a lot of light.  There is a bear sleeping", exits: ["N","W"]}
room3 = {:initial_message "You are in the ocean.  Don't drown", exits: ["N","E"]}
room4 = {:initial_message "You are in the desert.  It is very hot", exits: ["S","E"]}
room5 = {:initial_message "You are in a shed.  It is on fire", exits: ["S","W"]}