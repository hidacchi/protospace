class Prototype < ActiveRecord::Base
  has_many :thumbnails
  has_many :likes
  has_many :comments
  belongs_to :user

  paginates_per 10

  #バリデーション（値がからでないか）
  validates_presence_of :title, :catchcopy, :concept

  #fields_for(formのネスト)
  accepts_nested_attributes_for :thumbnails
end
