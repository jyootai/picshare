class Photo < ActiveRecord::Base
	mount_uploader :image,ImageUploader
	belongs_to :user

	def next
		Photo.where("id>?",id).limit(1).first
	end
	def prev
		Photo.where("id<?",id).limit(1).first
	end
end
