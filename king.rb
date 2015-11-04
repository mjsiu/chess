require_relative "stepping_piece.rb"

class King < SteppingPiece
  attr_accessor :move_set, :board, :color, :pos

  def initialize(board, color, pos)
    super(board, color, pos)

    @move_set = []
  end

  def moves(pos)
    super(pos, move_direction)
  end

  def move_direction
    single
  end

  def icon
    " ♔ "
  end

end
