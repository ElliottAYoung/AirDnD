class UserController < ApplicationController

	def index
		@user = User.find(params[:user_id])
	end

	
end
