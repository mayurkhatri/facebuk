class Post < ApplicationRecord
  # The posts posted from desktop are by default added to the
  # "Timeline Photos" album if not created under an album

  # The posts posted from mobile are by default added to the
  # "Mobile Uploads" album if not created under an album
  belongs_to :album
  has_many :photos, dependent: :delete_all
end
