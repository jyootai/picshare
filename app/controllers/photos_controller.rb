class PhotosController < ApplicationController
	before_action :authenticate_user!, :only=>[:new,:create,:destroy,:update]

  def index
  end

	def new
		@photo = Photo.new 
	end

	def edit
		@photo = current_user.photos.find(params[:id])
	end

  def create
		@photo = current_user.photos.create photo_params	
		@user = current_user.username
		if @photo.save
			redirect_to user_home_path(@user)
		else
			render 'upload'
		end
  end

	def show
		@photos = current_user.photos.find(params[:id])
	end

  def destroy
    @photo = Photo.find(params[:id])
		if @photo.destroy
			redirect_to user_home_path(current_user.username)
		end

  end
  def update
  end

	private
	def photo_params
		params.require(:photo).permit(:image)
	end
end
