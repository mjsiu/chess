require_relative 'piece.rb'

class SteppingPiece < Piece
  attr_accessor :board, :color, :pos

  MOVEKNIGHT = [
    [-2, -1],
    [-2, 1],
    [-1, -2],
    [-1, 2],
    [1, -2],
    [1, 2],
    [2, -1],
    [2, 1]
  ]

  MOVEKING = [
    [0, 1],
    [1, 1],
    [1, 0],
    [-1, 1],
    [-1, 0],
    [-1, -1],
    [1, -1]
  ]

  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = pos
  end

  def moves(pos,direction)
    move = direction
    super(pos, move_set)
  end

  def single
    move_set = MOVEKING
  end


  def l_shape
    move_set = MOVEKNIGHT
  end

end
