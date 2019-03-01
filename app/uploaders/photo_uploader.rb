class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :small do
    resize_to_fit 60, 60
    cloudinary_transformation radius: 10
  end
end
