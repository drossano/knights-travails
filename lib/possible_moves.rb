class PossibleMoves
  attr_accessor :current_space, :up_left, :up_right, :right_up, :right_down, :down_right, :down_left, :left_down, :left_up

  def initialize(current_space = nil, up_left = nil, up_right = nil, right_up = nil, right_down = nil, down_right = nil, down_left = nil, left_down = nil, left_up = nil)
    @current_space = current_space
    @up_left = up_left
    @up_right = up_right
    @right_up = right_up
    @right_down = right_down
    @down_right = down_right
    @down_left = down_left
    @left_down = left_down
    @left_up = left_up
  end
end
