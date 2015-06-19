class Rook
	#attr_accessor :from_position
	def initialize(end_coordinates)#(from_position)
		@end_coordinates = end_coordinates
		#@from_position = from_position
	end
	def validate_destination(end_coordinates)
		@end_coordinates = end_coordinates
		#from_x = #@end_coordinates[1]
		#from_y = #@end_coordinates[0]
		dest_x = @end_coordinates[1]
		dest_y = @end_coordinates[0]
		if (((dest_x == from_x) && (dest_y != from_y)) || ((dest_y == from_y) && (dest_x != from_x))) && ((dest_x >= 1 && dest_x <= 8 && dest_y >= 1 && dest_y <= 8))
			puts "valid move"
		else
			puts "not a valid move"
		end
	end
	def move?(start_position, end_position)

	end
end