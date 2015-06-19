class Rook
	def initialize(from_position)
		@from_position = from_position
	end
	def validate_destination(to_position)
		@to_position = to_position
		# if (starting position x == ending position x and ys != ye and xe and ye are between 1..8) 
		# or (starting position y == ending position y and xs != xe and xe and ye are between 1..8)
		# puts valid destination position 
		from_x = @from_position[1]
		from_y = @from_position[0]
		dest_x = @to_position[1]
		dest_y = @to_position[0]
		if (((dest_x == from_x) && (dest_y != from_y)) || ((dest_y == from_y) && (dest_x != from_x))) && ((dest_x >= 1 && dest_x <= 8 && dest_y >= 1 && dest_y <= 8))
			puts "valid move"
		else
			puts "not a valid move"
		end
	end
end