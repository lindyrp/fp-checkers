class Piece
  attr_accessor :color, :position_start

  def initialize(color, position_start)
    @color = color
    @position_start = position_start
  end


class Board
  def initialize
    @pieces = []
    @color = [:red, :black]
    @position_start