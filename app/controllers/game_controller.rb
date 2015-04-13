class GameController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to game_path, notice: "Your Game has Been Successfully Created!"
    else
      @errors = @game.errors
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
    params.require(:game).permit()
  end

end
