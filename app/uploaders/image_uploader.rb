class ImageUploader < CarrierWave::Uploader::Base
	include CarrierWave::MiniMagick

	storage :file

	def store_dir
		"uploader/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end

	process :resize_to_fit => [870,800]

	version :thumb do
		process :resize_to_fill=>[280,200]
	end
	version :large do
		process :resize_to_fill=>[870,638]
	end
	version :medium do
		process :resize_to_fill=>[230,230]
	end
	



	def extension_white_list
		%w(jpg jpeg gif png)
	end
	
end
