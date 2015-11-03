require_relative "./piece.rb"
require_relative "./display.rb"

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    add_pieces(@grid)
  end

  def [](pos)
    x, y = pos[0], pos[1]
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos[0], pos[1]
    grid[x][y].value = value
  end

  def add_pieces(grid)
    grid.each_index do |x|
      grid.each_index do |y|
        if x == 0 || x == 1
          grid[x][y] = 1#Piece.new(self, "black", )
        elsif x == 6 || x == 7
          grid[x][y] = 2#Piece.new(self, "white")
        end
      end
    end
  end

  def move(start, end_pos)
    raise "No piece" if self[start].nil?

    if self[start].valid_move?(end_pos)
      self[end_pos] = self[start]
      self[start] = nil
    else
      raise "Invalid move"
    end

  end

  def in_bound?(pos)
    return false unless pos[0].between?(0,7) && pos[1].between?(0,7)
    true
  end

end
