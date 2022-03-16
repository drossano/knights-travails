# frozen_string_literal: true

# Creates 8x8 chess board
class Board
  attr_reader :spaces

  def initialize
    @spaces = (0..7).to_a.permutation(2).to_a
    @spaces.push([0, 0], [1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7])
    @spaces.sort!
  end
end
