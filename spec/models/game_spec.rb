require 'spec_helper'

RSpec.describe Game, type: :model do

  describe "self.create_with_pieces" do
    it "creates 24 pieces when creating new game" do
      game = Game.create_with_pieces({name: "Mary"})
      expect(game.pieces.count).to eq(24)
    end
  end

end

# Model Test demo from mentor session, just keeping it here for reference for now
#   describe '#self.convert' do
#     it "returns kilogram" do
#       expect(Gram.convert).to eq "kilogram"
#     end

#     it "returns feet" do
#       expect(Gram.convert("feet")).to eq "feet"
#     end
#   end



# Model Test demo from mentor session, just keeping it here for reference for now
  # def self.convert(units="kilogram")
  #   return units
  # end
