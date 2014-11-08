class PlayerOpponentsController < ApplicationController
  def show
    @player = Player.find(params[:player_id])
    @opponent = Player.find(params[:id])
  end
end
