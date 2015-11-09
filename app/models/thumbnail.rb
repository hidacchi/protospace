class Thumbnail < ActiveRecord::Base
  belongs_to :prototype
  belongs_to :user

  # carrierwave
  mount_uploader :image, AvatarUploader
  enum status: %i(main sub1 sub2)
end
