class Game < ActiveRecord::Base
  has_many :pieces

  #starting pieces as an array -- [color, x_position, y_position]
  def self.create_with_pieces(game_params)
    game = Game.create(game_params)
    starting_pieces = [
      ['red', 1, 0],
      ['red', 3, 0],
      ['red', 5, 0],
      ['red', 7, 0],
      ['red', 0, 1],
      ['red', 2, 1],
      ['red', 4, 1],
      ['red', 6, 1],
      ['red', 1, 2],
      ['red', 3, 2],
      ['red', 5, 2],
      ['red', 7, 2],
      ['black', 0, 5],
      ['black', 2, 5],
      ['black', 4, 5],
      ['black', 6, 5],
      ['black', 1, 6],
      ['black', 3, 6],
      ['black', 5, 6],
      ['black', 7, 6],
      ['black', 0, 7],
      ['black', 2, 7],
      ['black', 4, 7],
      ['black', 6, 7]
    ]
    starting_pieces.each do |color, x_position, y_position|
      game.pieces.create(color: color, x_position: x_position, y_position: y_position)
    end
    return game
  end
end


# create pieces for game when creating game

# do this in the model

# 1. after create hook -- don't do this (but look it up anyway)
# 2. class method "self.create_with_pieces"