class ImageUploader < CarrierWave::Uploader::Base

	include CarrierWave::MiniMagick
	storage :image
	def store_dir
		"uploader/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end
	def extension_white_list
		%w(jpg jpeg gif png)
	end
	
end
