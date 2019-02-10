class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :seller, class_name: "User"
  has_many :likes, dependent: :destroy

  def set_main_thumbnail
    images.first.image
  end

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
