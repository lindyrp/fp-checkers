require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "games#create action" do
    it "should successfully create a new game in database" do
      post :create, game: {name: 'Mary'}
      expect(response).to redirect_to(assigns(:game))

      game = Game.last
      expect(game.name).to eq "Mary"
    end
  end

end