class AvatarUploader < CarrierWave::Uploader::Base

  # リサイズや画像の形式を変えるため
  include CarrierWave::RMagick

  # 画像のサイズを変更
  process resize_to_fit: [100, 100]

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
