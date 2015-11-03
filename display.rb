require 'colorize'
require 'io/console'

class Display
  attr_accessor :cursor, :board
  KEY = {
    "w" => :up,
    "a" => :left,
    "s" => :down,
    "d" => :right,
  }
  MOVES = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0]
  }

  def initialize(board)
    @board = board
    @cursor = [0,0]
  end

  def get_input
    input = STDIN.getc.chr
    p input
    key = KEY[input]
    handle_key(key)
    self.render
  end

  def handle_key(key)
    cursor = [(MOVES[key][0] + @cursor[0]), (MOVES[key][1] + @cursor[1])]
    @cursor = cursor if @board.in_bound?(cursor)

  end

  def render
    @board.grid.each_index do |x|
      print "\n"
      @board.grid.each_index do |y|
        if [x,y] == @cursor
          @board.grid[x][y] = "*"
          print @board.grid[x][y]
        else
          @board.grid[x][y] = "-"
          print @board.grid[x][y]
        end
      end
    end

  end
end
