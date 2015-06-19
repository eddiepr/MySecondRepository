require_relative("game_class")
require_relative("board_class")
require_relative("rank_class")
require_relative("rook_class")
require_relative("king_class")
require_relative("bishop_class")
require_relative("knight_class")
require_relative("queen_class")
require_relative("pawn_class")
#require_relative("class_piece")


layout = [[Rook.new([1,8]), nil, nil, nil, nil, nil, nil, Rook.new([1,8])], 
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[Rook.new([1,1]), nil, nil, nil, nil, nil, nil, Rook.new([8,1])]] 

Game.check([1,6])
Game.check([2,5])

# game1 = Game.new(layout)
####validate is for validating piece starting position
####validate_destination is for validating move to position
# game1.validate([1,8])
# game1.validate([5,4])
# game1.validate([3,8])
# game1.validate([8,8])

# rook1 = Rook.new([1,8]) ####there are 4 rooks so it can have 4 from positions in initial layout
# rook2 = Rook.new([8,1])
# rook1.validate_destination([1,6])
# rook1.validate_destination([3,5])
# rook1.validate_destination([4,8])
# rook1.validate_destination([3,4])
# rook1.validate_destination([9,1])
# rook2.validate_destination([1,1])
# rook2.validate_destination([1,3])
# rook2.validate_destination([8,8])
# rook2.validate_destination([3,4])
# rook2.validate_destination([8,9])

# rook3 = Rook.new([1,8])
# puts "dhfdjkhgfjkhgfjkgf"
# game1.move_check(rook3.from_position, [8,8])
# puts "fgjjfgfjgjkfgjkfgjkfg"
# rook3.move?(rook3.from_position, [8,8])
# rook3.move?(rook3.from_position, [7,6])

# bishop1 = Bishop.new([3,1])

# piece1 = Piece.new(rook1)
# piece1.validate_move([6,5])
####game.check()




