class Album < ApplicationRecord
  # The posts posted from desktop are by default added to the
  # "Timeline Photos" album if not created under an album

  # The posts posted from mobile are by default added to the
  # "Mobile Uploads" album if not created under an album
  belongs_to :user
  has_many :posts, dependent: :delete_all
end
