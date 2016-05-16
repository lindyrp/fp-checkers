class Piece < ActiveRecord::Base

  attr_reader :board, :color
  attr_accessor :position
  
  def initialize(position, board, color)
    @position = position
    @board = board
    @color = color
  end
end
