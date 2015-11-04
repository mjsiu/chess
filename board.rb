require_relative "pieces.rb"
require_relative "display.rb"

class Board
  attr_accessor :grid, :black, :white

  CONSTANT = [
    Rooke,
    Knight,
    Bishop,
    Queen,
    King,
    Bishop,
    Knight,
    Rooke
  ]


  def initialize
    @grid = Array.new(8) { Array.new(8) }
    add_pieces(@grid)
    @black
    @white
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    grid[x][y].value = value
  end

  def add_pieces(grid)
    grid.each_index do |x|
      grid.each_index do |y|
        if x == 0
          loop_constants([x,y])
        elsif x == 7
          loop_constants([x,y])
        end
      end
    end
  end

  def loop_constants(grid_cord)
    x = CONSTANT[grid_cord[1]]
      grid[grid_cord[0]][grid_cord[1]] = x.new(self, :black, grid_cord)
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
    pos[0].between?(0,7) && pos[1].between?(0,7)
  end

end

if $PROGRAM_NAME == __FILE__
  b = Board.new
  d = Display.new(b)
  d.render
end
