class ChangeCreateSharing < ActiveRecord::Migration[6.1]
  def change
    remove_column :sharings, :shared_to_user_id, :integer
    remove_column :sharings, :user_id, :integer
    add_column :sharings, :shared_to_user_id, :integer
    add_column :sharings, :user_id, :integer
  end
end
