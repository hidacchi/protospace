class Prototype < ActiveRecord::Base
  has_many :thumbnails
  has_many :likes
  has_many :comments
  belongs_to :user

  #ページネーション
  paginates_per 12

  #バリデーション（値がからでないか）
  validates_presence_of :title, :catchcopy, :concept

  #fields_for(formのネスト)
  accepts_nested_attributes_for :thumbnails

  #liked_by?というメソッドはそのユーザが、アクセスしている投稿にlikeをしているかどうかというものを判定するものです。
  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

  # acts_as_taggable_on :tags のエイリアス
  acts_as_taggable
end
