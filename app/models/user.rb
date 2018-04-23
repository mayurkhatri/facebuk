class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :albums
  has_many :posts, :through => :albums
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :events

  after_create :create_default_albums

  def create_default_albums
    self.albums.create(name: "Mobile Uploads")
    self.albums.create(name: "Timeline Posts")
  end
end
