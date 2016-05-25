class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.create_with_pieces(game_params)
    redirect_to game_path(@game)
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end


  private

  def game_params
    params.require(:game).permit(:name)
  end

end
