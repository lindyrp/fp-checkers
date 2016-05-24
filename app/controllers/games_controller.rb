class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.create_with_pieces(game_params)
    redirect_to games_path
  end

  def index
    @games = Game.all
  end

  def show
  end


  def board
    Piece.find_or_create_by(color:"red", x_position: 1, y_position: 0, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 3, y_position: 0, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 5, y_position: 0, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 7, y_position: 0, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 0, y_position: 1, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 2, y_position: 1, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 4, y_position: 1, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 6, y_position: 1, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 1, y_position: 2, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 3, y_position: 2, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 5, y_position: 2, game_id: 1)
    Piece.find_or_create_by(color:"red", x_position: 7, y_position: 2, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 0, y_position: 5, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 2, y_position: 5, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 4, y_position: 5, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 6, y_position: 5, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 1, y_position: 6, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 3, y_position: 6, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 5, y_position: 6, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 7, y_position: 6, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 0, y_position: 7, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 2, y_position: 7, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 4, y_position: 7, game_id: 1)
    Piece.find_or_create_by(color:"black", x_position: 6, y_position: 7, game_id: 1)
  end


  private

  def game_params
    params.require(:game).permit(:name)
  end

end
