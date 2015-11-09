class Prototype < ActiveRecord::Base
  has_many :thumbnails
  has_many :likes
  has_many :comments
  belongs_to :user

  #fields_for(formのネスト)
  accepts_nested_attributes_for :thumbnails
end
