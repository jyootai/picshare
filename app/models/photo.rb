class Photo < ActiveRecord::Base
	mount_uploader :image,ImageUploader
	belongs_to :user

	def next
		Photo.where("id>?",id).first
	end
	def prev
		Photo.where("id<?",id).last
	end
end
