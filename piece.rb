# require_relative 'sliding_piece.rb'
# require_relative 'stepping_piece.rb'

class Piece
  attr_accessor :board, :color, :pos, :possible_moves

  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = []
  end

  def moves(pos, move_set)
    found_moves = []
    move_set.each do |x|
      possible_moves << [x[0] + pos[0], x[1] + pos[1]]
    end
    @possible_moves = found_moves.select { |x| @board.in_bound?(x) }
  end

  def filtered_move_sets
    filtered_moves = []
    @possible_moves.each do |move|
      if pos_check(move)
        filtered_moves << move
      end
    end
    filtered_moves
  end

  def pos_check (move)
    @board[*move] && self.color != @board[*move].color
  end

  def inspect
    self.icon
  end

end
