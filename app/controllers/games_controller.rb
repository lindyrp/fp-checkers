class GamesController < ApplicationController
  def new
  end
end


class Board
  
  attr_accessor :board
   
  
  def [](pos)
    row, col = pos
    @board[row][col]
  end
  
  def populate_board
    populate_odd_row(0, :red)
    populate_even_row(1, :red)
    populate_odd_row(2, :red)
    
    populate_even_row(5, :black)
    populate_odd_row(6, :black)
    populate_even_row(7, :black) 
  end  
  
  def populate_odd_row(row, color)
    @board[row][0, 2, 4, 6] = Piece.find_or_create_by([row, col], self, color)
    print :color
  end
      
  def populate_even_row(row, color)
    @board[row][1, 3, 5, 7] = Piece.find_or_create_by([row, col], self, color)
  end  

end