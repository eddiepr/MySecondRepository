require_relative("samplegameroomclass")
require_relative("samplegamegameclass")


room1 = Room.new(["N"])
room2 = Room.new(["E", "W"])

puts "You are in a dark room. There is a door to the north.  Type a direction(N,S,E, or W) to go that direction"
puts ">"
direction = gets.chomp
puts @exits.class
if @exits.include? direction 
	puts "You are in the forest. There is a lot of light. There is a bear sleeping."
else 
	puts "There is no exit in that direction"
end