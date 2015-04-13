class GameController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save && current_user
      redirect_to game_path, notice: "Your Game has Been Successfully Created!"
    else
      @errors = @game.errors
      notice: "You Must be Logged in to Create a Game" unless current_user
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    render :show
  end

  def destroy
    Game.destroy(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:game_name, :game_system, :level_range, :description, :minimum_number_of_players, :maximum_number_of_players, :start_time, :end_time)
  end
end
