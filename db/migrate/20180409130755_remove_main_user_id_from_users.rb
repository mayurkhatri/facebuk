class RemoveMainUserIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :main_user_id, :integer
  end
end
