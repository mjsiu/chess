require_relative 'piece.rb'

class SlidingPiece < Piece

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
  end

  def moves(pos, move_set)
    # if slider_type == "Rook"
    #   move_set = move_set_hor(pos)
    # elsif slider_type == "Bishop"
    #   move_set = move_set_diag(pos)
    # else slider_type == "Queen"
    #   move_set = move_set_hor(pos).concat(move_set_diag(pos))
    # end
    super(pos, move_set)
  end

  def move_set_hor(pos)
    
  end

  def move_type

end
