class Board
  def initialize
    @board = (0..7).to_a.permutation(2).to_a
    @board.push([7,7])
    @board.unshift([0,0])
    p @board
  end
end