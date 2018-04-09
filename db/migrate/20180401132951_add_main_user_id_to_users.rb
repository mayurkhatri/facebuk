class AddMainUserIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :main_user, foreign_key: true, index: true
  end
end
