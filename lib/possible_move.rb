class PossibleMove
  attr_reader :current_space
  attr_accessor :possible_moves
  def initialize(current_space)
    @current_space = current_space
    @possible_moves = nil
  end

end