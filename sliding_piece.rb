require_relative 'piece.rb'

class SlidingPiece < Piece
  attr_accessor :board, :color, :pos

  MOVESDI = [
    [-1,1], [-1,-1], [1,1], [1,-1],
    [-2,2], [-2,-2], [2,2], [2,-2],
    [-3,3], [-3,-3], [3,3], [3,-3],
    [-4,4], [-4,-4], [4,4], [4,-4],
    [-5,5], [-5,-5], [5,5], [5,-5],
    [-6,6], [-6,-6], [6,6], [6,-6],
    [-7,7], [-7,-7], [7,7], [7,-7]
  ]
  MOVESHOR = [
    [0,1], [0,2], [0,3], [0,4], [0,5], [0,6], [0,7],
    [0,-1], [0,-2], [0,-3], [0,-4], [0,-5], [0,-6], [0,-7],
    [1,0], [2,0], [3,0], [4,0], [5,0], [6,0], [7,0],
    [-1,0],[-2,0], [-3,0], [-4,0], [-5,0], [-6,0], [-7,0]
  ]

  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = pos
  end

  def moves(pos,slider_type)
    if slider_type == "Rook"
      move_set = MOVESHOR
    elsif slider_type == "Bishop"
      move_set = MOVESDI
    else slider_type == "Queen"
      move_set = MOVESHOR.concat(MOVESDI)
    end
    super(pos, move_set)
  end

end
