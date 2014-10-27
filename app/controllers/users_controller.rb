class UsersController < ApplicationController

	def show
		@photos = current_user.photos	
		@user = User.find_by params[current_user.username]
	end
	
end
