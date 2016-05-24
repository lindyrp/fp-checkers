class Piece < ActiveRecord::Base
  belongs_to :game 

  def create
    @color = color
    @x_position = x_position
    @y_position = y_position
  end

end
