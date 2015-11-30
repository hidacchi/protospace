class Prototype < ActiveRecord::Base
  has_many :thumbnails
  has_many :likes
  has_many :comments
  belongs_to :user

  #ページネーション
  paginates_per 10

  #バリデーション（値がからでないか）
  validates_presence_of :title, :catchcopy, :concept

  #fields_for(formのネスト)
  accepts_nested_attributes_for :thumbnails

  #like_userというメソッドはそのユーザが、アクセスしている投稿にlikeをしているかどうかというものを判定するものです。
  def like_user(user)
    likes.find_by(user_id: user.id)
  end
end
