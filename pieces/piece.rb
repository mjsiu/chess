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
    @possible_moves.select { |x| @board.in_bound?(x) }
  end

  def valid_moves
    valid = []
    @possible_moves.each do |move|
      if pos_check(move)
        valid << move
      end
    end
    valid
  end

  def pos_check (move)
    return true if @board[*move] != nil && self.color != @board[*move].color
    false
  end

end
