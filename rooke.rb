require_relative 'sliding_piece.rb'

class Rooke < SlidingPiece
  attr_accessor :slider_type, :move_set, :board, :color, :pos

  def initialize(board, color, pos)
    super(board, color, pos)
    @move_set = []
  end

  def moves(pos,move_direction)
    super(pos, move_direction)
  end

  def move_direction
    hor
  end

  def icon
    " ♖ "
  end

end
