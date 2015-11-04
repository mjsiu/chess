require_relative "sliding_piece.rb"

class Queen < SlidingPiece
  attr_accessor :move_set, :board, :color, :pos

  def initialize(board, color, pos)
    super(board, color, pos)
    @move_set = []
  end

  def moves(pos)
    super(pos, move_direction)
  end

  def move_direction
    hor_diag
  end

  def icon
    " ♕ "
 end

end
