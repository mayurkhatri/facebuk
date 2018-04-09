class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  #has_many :friends, class_name: "User", foreign_key: "main_user_id"
  has_many :friendships
  has_many :friends, :through => :friendships
  #belongs_to :main_user, class_name: "User"
end
