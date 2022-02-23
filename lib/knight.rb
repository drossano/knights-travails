require_relative 'possible_moves'
require_relative 'board'
class Knight
  def initialize(starting_space)
    @starting_space = starting_space
    @board = Board.new
    @possible_moves = []
    get_moves(@board.spaces)
  end

  def get_moves(spaces)
    # Iterate through each space
    # Check if each move exists
    # If move exists add to a nested array for each space
    spaces.each do |space|
      moves_from_space = [get_up_left(space), get_up_right(space), get_right_up(space), get_right_down(space), get_down_right(space), get_down_left(space), get_left_down(space), get_left_up(space)]
      @possible_moves.push(moves_from_space)
    end
    @possible_moves.map!{ |array| array.compact.sort}
    p @possible_moves
  end

  def get_up_left(space)
    @board.spaces.index([space[0] - 1, space[1] + 2])
  end

  def get_up_right(space)
    @board.spaces.index([space[0] + 1, space[1] + 2])
  end

  def get_right_up(space)
    @board.spaces.index([space[0] + 2, space[1] + 1])
  end

  def get_right_down(space)
    @board.spaces.index([space[0] + 2, space[1] - 1])
  end

  def get_down_right(space)
    @board.spaces.index([space[0] + 1, space[1] - 2])
  end

  def get_down_left(space)
    @board.spaces.index([space[0] - 1, space[1] - 2])
  end

  def get_left_down(space)
    @board.spaces.index([space[0] - 2, space[1] - 1])
  end

  def get_left_up(space)
    @board.spaces.index([space[0] - 2, space[1] + 1])
  end
end