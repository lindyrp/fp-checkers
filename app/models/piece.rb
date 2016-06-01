class Piece < ActiveRecord::Base
  belongs_to :game 

  def create
    @color = color
    @x_position = x_position
    @y_position = y_position
  end

  def image
    if color == "red"
      "\u262F"
    else
      "\u262C"
    end
  end


end
