require "spec_helper"

describe PlayerOpponentsController do
  describe "show" do
    it "renders successfully with the player and the game" do
      opponent = FactoryGirl.create(:player)
      player = FactoryGirl.create(:player)

      get :show, player_id: player, id: opponent
      response.should be_success

      assigns(:opponent).should == opponent
      assigns(:player).should == player
    end
  end
end
