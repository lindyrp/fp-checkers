class Game < ActiveRecord::Base
  has_many :pieces


  #starting pieces as an array -- [color, x_position, y_position]

  def self.create_with_pieces(params)
    game = Game.create(game_params)
    starting_pieces = [
      ['red', 1, 0],
      ['red', 3, 0],
      ['red', 5, 0],
      ['red', 7, 0]
    ]
      starting_pieces.each do |color, x_position, y_position|
        Piece.create(@color, @x_position, @y_position)
      end

  end


private

  def game_params
    params.require(:game).permit(:name)
  end

end


# create pieces for game when creating game

# do this in the model

# 1. after create hook -- don't do this (but look it up anyway)
# 2. class method "self.create_with_pieces"
