class Piece
  attr_accessor :board, :color, :pos, :possible_moves

  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = []
  end

  def moves(pos, move_set)
    @possible_moves = []
    move_set.each do |x|
      possible_moves << [x[0] + pos[0], x[1] + pos[1]]
    end
    @possible_moves
  end

  def valid_moves
    valid = []
    @possible_moves.each do |x|
      if @board.in_bound?(x) && @board[*x] != nil
        valid << x
      end
    end
    valid
  end
end
