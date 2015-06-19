require_relative("board_class")

class Game
	attr_accessor :starting_position
	def initialize(starting_layout)
		@starting_layout = starting_layout
	end
	def validate(starting_position)
		@starting_position = starting_position
		board1 = Board.new(@starting_layout)
		#if @layout array contains starting_position array return valid message

			# if position is valid return true
			# if position is invalid return false
				#is there a piece here
				#tell the application there is something there or not
	end
end