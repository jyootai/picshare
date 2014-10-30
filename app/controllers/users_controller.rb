class UsersController < ApplicationController
	before_action :authenticate_user!, :only=>[:edit,:update,:password,:profile,:email,:social]

	def show
		@photos = current_user.photos	
	end

	def edit
	end

	def password
		if request.patch?
			if current_user.valid_password?(params[:user][:old_password]) and  current_user.update_attributes user_params
				redirect_to root_path
			else
				render 'password'
			end
		end
	end

	def email
	end
	
	def profile
		if request.patch?
			if current_user.update_attributes user_params
																								
				redirect_to profile_users_path
			else
				render 'profile'
			end
		end
	end

	def social
		if request.patch?
			if current_user.update_attributes user_params
				redirect_to social_users_path
			else
				render 'social'	
			end
		end
	end

	def update
		if current_user.update_attributes user_params
			redirect_to edit_settings_path
		else
			render 'edit'
		end
		
	end

	private

		def user_params
			params.require(:user).permit(:name, :username,
																	 :email,:password, 
																	 :avatar, :city,
																	 :sex, :website,
																	 :title, :bio,
																	 :qq, :weixin,
																	 :twitter, :facebook,
																	 :github)
		end
	
end
