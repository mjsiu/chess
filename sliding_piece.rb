require_relative 'piece.rb'

class SlidingPiece < Piece

  MOVESDI = [[-1,1], [-1,-1], [1,1], [1,-1]]
  MOVESHOR = []

  def initialize(board, color, pos)
  end


  def moves(pos, slider_type)
    move_set = []
    if slider_type == "Rook"
      move_set = move_set_hor(pos)
    elsif slider_type == "Bishop"
      move_set = move_set_diag(pos)
    else slider_type == "Queen"
      move_set = move_set_hor(pos).concat(move_set_diag(pos))
    end

    super(pos, move_set)

  end

  def move_set_diag(pos)

    MOVESDI.each_with_index do |shift, idx|

  end

  def move_set_hor

    MOVESHOR.each_with_index do |shift,idx|

  end

  end
end
