require_relative("game_class")
require_relative("board_class")
require_relative("rook_class")
require_relative("king_class")
require_relative("bishop_class")
require_relative("knight_class")
require_relative("queen_class")
require_relative("pawn_class")


layout = [["br", nil, nil, nil, nil, nil, "br"], 
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
[nil, nil, nil, nil, nil, nil, nil, nil],
["wr", nil, nil, nil, nil, nil, nil, "wr"]] 


game1 = Game.new(layout)
game1.validate([1,8])
game1.validate([5,4])
game1.validate([3,8])
game1.validate([8,8])

