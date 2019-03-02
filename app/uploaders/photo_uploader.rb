class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :small do
    resize_to_fit 100, 100
    cloudinary_transformation radius: 10
  end

  version :show do
    resize_to_fit 200, 200
    cloudinary_transformation radius: 10
  end
end
