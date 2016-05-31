require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "games#create action" do
    it "should successfully create a new game in database" do
      post :create, game: {name: 'Mary'}

      game = Game.last
      expect(game.name).to eq "Mary"
    end
  end

  describe "games#create action" do
    it "should successfully redirect to game path after game creation" do
      post :create, game: {name: 'Mary'}
      expect(response).to redirect_to(assigns(:game))
    end
  end

  describe "games#create action" do
    it "should create pieces when creating a game" do
      post :create, game: {name: 'Mary'}

      game = Game.last
      expect(game.pieces.count).to eq 24
    end
  end


end