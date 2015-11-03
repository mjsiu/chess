require_relative "sliding_piece.rb"

class Rooke < SlidingPiece
  attr_accessor :slider_type, :move_set, :board, :color, :pos

  def initialize(board, color, pos, slider_type)
    super(board, color, pos)
    @slider_type = slider_type
    @move_set = []
  end

  def moves(pos,move_set)
    super(pos, slider_type)
  end

  def rook_move_set
    @move_set = move_set_hor(pos)
  end

end
