class UsersController < ApplicationController
	before_action :authenticate_user!, :only=>[:edit,:update,:password,:profile,:email,:social]
	before_action :find_user

	def show
		@photos = current_user.photos	
	end

	def edit
	end

	def password
	end

	def email
	end
	
	def profile
	end

	def social
	end

	def update
		if @user.update_attributes user_params
			redirect_to edit_settings_path
		else
			render 'edit'
		end
		
	end

	private
		def find_user
			@user = User.find_by params[current_user.username]
		end

		def user_params
			params.require(:user).permit(:name, :username,
																	 :email, :password,
																	 :avatar, :city,
																	 :sex, :website,
																	 :title, :bio,
																	 :qq, :weixin,
																	 :twitter, :facebook,
																	 :github)
		end
	
end
