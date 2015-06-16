require_relative("samplegameroomclass")
require_relative("samplegamegameclass")

class Room
	attr_accessor :room_number
	attr_accessor :exits
	def initialize(room_number)
		@room_number = room_number	
		@exits = @room_number[:exits]
	end
	def print_initial_message		
		puts @room_number[:initial_message]
	end
	# def consequence
	# 	if 
	# end
end


#array = ["You are in the forest. There is a lot of light. There is a bear sleeping.", ""]

#room1 = Room.new(["N"])
#room2 = Room.new(["E", "W"])




layout1 = {:initial_message => "You are in a dark room. There is a door to the north.  Type a direction(N,S,E, or W) to go that direction, or type a command either(look for food, sing, cry)", :exits => ["N"]}
layout2 = {:initial_message => "You are in the forest.  There is a lot of light.  There is a bear sleeping", :exits => ["N","W"]}
layout3 = {:initial_message => "You are in the ocean.  Don't drown", :exits => ["N","E"]}
layout4 = {:initial_message => "You are in the desert.  It is very hot", :exits => ["S","E"]}
layout5 = {:initial_message => "You are in a shed.  It is on fire", :exits => ["S","W"]}

room1 = Room.new(layout1)
room2 = Room.new(layout2)
room3 = Room.new(layout3)
room4 = Room.new(layout4)
room5 = Room.new(layout5)

puts "You are in a dark room. There is a door to the north.  Type a direction(N,S,E, or W) to go that direction"
puts ">"
direction = gets.chomp
if room1.exits
	puts "You are in the forest. There is a lot of light. There is a bear sleeping."
else 
	puts "There is no exit in that direction"
end