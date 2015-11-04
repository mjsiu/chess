require_relative 'piece.rb'
# require_relative 'bishop.rb'

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

  def moves(pos, direction)
    move_set = direction
    super(pos, move_set)
  end

# each loop w all directions
  # while true
  # pos += dig or horz
  # if pos.out_of_bounds? break
  # if another piece is there and it's not my color (add piece & break)

  def diag
    move_set = MOVESDI
  end

  def hor
    move_set = MOVESHOR
  end

  def hor_diag
    move_set = MOVESDI.concat(MOVESHOR)
  end

end
