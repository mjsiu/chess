require 'colorize'
require 'io/console'

class Display
  attr_accessor :cursor, :board
  KEY = {
    "w" => :up,
    "a" => :left,
    "s" => :down,
    "d" => :right,
    "\u0003" => :ctrl_c
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
    key = KEY[read_char]
    handle_key(key)
  end

  def handle_key(key)
    case key
    when :left, :up, :down, :right
      update_pos(MOVES[key])
    when :return
      @cursor
    when :ctrl_c
      exit 0
    end
  end

  def read_char
  STDIN.echo = false
  STDIN.raw!

  input = STDIN.getc.chr
  if input == "\e" then
    input << STDIN.read_nonblock(3) rescue nil
    input << STDIN.read_nonblock(2) rescue nil
  end
ensure
  STDIN.echo = true
  STDIN.cooked!

  return input
end

  def update_pos(diff)
    cursor = [(diff[0] + @cursor[0]), (diff[1] + @cursor[1])]
    @cursor = cursor if @board.in_bound?(cursor)
  end

  def render

    until false
      system("clear")
      @board.grid.each_with_index do |row, x|
        print "\n"
        row.each_with_index do |piece, y|
          # @board.grid[x][y] = "   ".colorize(colors_for_the_board(x, y))
          print print_piece(piece, x, y) #@board.grid[x][y]
        end
      end
      gaet_input
    end
  end

  def print_piece(piece, x, y)
    if piece.nil?
      "   ".colorize(colors_for_the_board(x, y))
    else
      piece.inspect.colorize(colors_for_the_board(x, y))
    end
  end

  def colors_for_the_board(i, j)
    if [i, j] == @cursor
      bg = :light_red
    elsif (i + j).odd?
      bg = :light_blue
    else
      bg = :blue
    end
    { background: bg, color: :white }
  end



  def display
    system("clear")
    self.render
  end

end
