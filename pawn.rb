class Pawn < Piece
  attr_accessor :board, :color, :pos

  FIRSTMOVE = [
    [2,0]
  ]

  NORMALMOVE = [
    [1,0]
  ]

  ATTACKMOVE = [
    [1,1], [-1,1]
  ]

  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = pos
  end

  


end
