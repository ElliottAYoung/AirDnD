class UserController < ApplicationController

	def new
		@user = User.new
	end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboard_path, notice: "Welcome to AirDnD!"
    else
      @errors = @user.errors
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

	private

  def user_params
    params.require(:user).permit(:email, :password_hash, :avatar_url, :bio, :name , :preferred_experience, :preferred_version, :preferred_classes, :preferred_races, :preferred_alignments, :preferred_level)
  end
end
