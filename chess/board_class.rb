#give me this position and if there is a piece there let me know
require_relative("game_class")
class Board
	attr_accessor :layout
	def initialize(layout, from_position)
		@layout = layout
		@from_position = from_position
	end
	def validate_position
		if @layout[(@from_position[0]) - 1, (@from_position[1]) - 1] != nil 
			puts "A piece is here"
		else
			puts "There is no piece here"
		end#@from_position is valid within the board1 do board check if there is a piece there method
		#if @layout array contains starting_position array return valid message

			# if position is valid return true
			# if position is invalid return false
				#is there a piece here
				#tell the application there is something there or not
	end
end
