class Board
  attr_reader :spaces
  def initialize
    @spaces = (0..7).to_a.permutation(2).to_a
    @spaces.push([7,7])
    @spaces.unshift([0,0])
    p @spaces
  end
end