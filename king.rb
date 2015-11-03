require_relative "stepping_piece.rb"

class King < SteppingPiece
  attr_accessor :stepping_type, :move_set, :board, :color, :pos

  def initialize(board, color, pos, stepping_type)
    super(board, color, pos)
    @stepping_type = stepping_type
    @move_set = []
  end

  def moves(pos,stepping_type)
    super(pos,stepping_type)
  end

end
