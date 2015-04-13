module UserHelper

	def current_user
		@_user ||= User.find(session[:user_id])
	end
	
end
