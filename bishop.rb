require_relative "sliding_piece.rb"

class Bishop < SlidingPiece
  attr_accessor :slider_type, :move_set, :board, :color, :pos

  def initialize(board, color, pos, slider_type)
    super(board, color, pos)
    @slider_type = slider_type
    @move_set = []
  end

  def moves(pos,slider_type)
    super(pos,slider_type)
  end

end
