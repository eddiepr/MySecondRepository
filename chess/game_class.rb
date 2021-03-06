require_relative("board_class")
require_relative("rook_class")

class Game
	attr_accessor :from_position
	attr_accessor :starting_layout
	def self.check(end_coordinates)
		@end_coordinates = end_coordinates
		piece = Rook.new(@end_coordinates)
		piece.validate_destination
	end
	def self.check_if_occupied
	end
	def initialize(starting_layout)
		@starting_layout = starting_layout
		@board = Board.new(@starting_layout)
	end
	def validate(from_position)
		@from_position = [from_position[1] - 1, from_position[0] - 1]
		
		@board.validate_position(@from_position)

		# if board[(@from_position[0]) - 1, (@from_position[1]) - 1] != nil 
		# 	puts "A piece is here"
		# else
		# 	puts "There is no piece here"
		# end#@from_position is valid within the board1 do board check if there is a piece there method
		#if @layout array contains starting_position array return valid message

			# if position is valid return true
			# if position is invalid return false
				#is there a piece here
				#tell the application there is something there or not
	end
	def move_check(starting_position, end_position)
		self.validate(@from_position)
	end
end