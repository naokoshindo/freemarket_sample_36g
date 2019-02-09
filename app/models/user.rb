class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :items, foreign_key: :seller_id
  has_many :items, foreign_key: :buyer_id

  acts_as_follower  #フォローする
  acts_as_followable  #フォローされる

end
