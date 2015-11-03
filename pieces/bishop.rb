require_relative "sliding_piece.rb"

class Bishop < SlidingPiece
  attr_accessor :slider_type, :move_set, :board, :color, :pos

  def initialize(board, color, pos, slider_type)
    super(board, color, pos)
    @slider_type = slider_type
    @move_set = []
  end

  def moves(pos, move_direction)
    super(pos, move_direction)
  end

  def move_direction
    diag
  end

end
