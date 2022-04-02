# frozen_string_literal: true

require_relative 'board'
# Handles moving knight
class Knight
  def initialize
    @board = Board.new
    @possible_moves = []
    get_moves(@board.spaces)
  end

  def get_moves(spaces)
    spaces.each do |space|
      moves_from_space = [get_up_left(space), get_up_right(space), get_right_up(space), get_right_down(space), get_down_right(space), get_down_left(space), get_left_down(space), get_left_up(space)]
      @possible_moves.push(moves_from_space)
    end
    @possible_moves.map! { |array| array.compact.sort }
    @possible_moves
  end

  def move_knight(starting_space, destination_space)
    paths = search_moves(starting_space, destination_space)
    travails = []
    travails.push(destination_space)
    until starting_space == destination_space
      paths.each do |path|
        if path[:space] == destination_space
          travails.push(path[:predecesor])
          destination_space = path[:predecesor]
        end
      end
    end
    travails.reverse!
    puts "You made it in #{travails.length - 1} moves! Here's your path:"
    travails.each { |travail| p travail }
  end

  def search_moves(current_space, destination_space)
    queue = []
    results = []
    predecessor = nil
    queue.push(current_space)
    until queue.empty?
      queue.each do |move|
        results.push(Hash[space: move, predecesor: predecessor]) unless results.any? { |result| result[:space] == move }
      end
      predecessor = queue[0]
      @possible_moves[@board.find_space(queue[0])].each do |move|
        queue.push(@board.spaces[move]) unless results.any? { |result| result[:space] == @board.spaces[move] }
      end
      break if queue.shift == destination_space
    end
    results
  end

  def get_up_left(space)
    @board.find_space([space[0] - 1, space[1] + 2])
  end

  def get_up_right(space)
    @board.find_space([space[0] + 1, space[1] + 2])
  end

  def get_right_up(space)
    @board.find_space([space[0] + 2, space[1] + 1])
  end

  def get_right_down(space)
    @board.find_space([space[0] + 2, space[1] - 1])
  end

  def get_down_right(space)
    @board.find_space([space[0] + 1, space[1] - 2])
  end

  def get_down_left(space)
    @board.find_space([space[0] - 1, space[1] - 2])
  end

  def get_left_down(space)
    @board.find_space([space[0] - 2, space[1] - 1])
  end

  def get_left_up(space)
    @board.find_space([space[0] - 2, space[1] + 1])
  end
end
