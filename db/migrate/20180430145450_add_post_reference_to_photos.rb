class AddPostReferenceToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :post, foreign_key: true
  end
end
