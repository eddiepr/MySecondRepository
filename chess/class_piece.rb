require_relative("bishop_class")
require_relative("rook_class")
class Piece
	def initialize (piece)
		@piece = piece
	end
	def validate_move(destination)
		@destination = destination
		@piece.validate_destination(@destination)
	end
end