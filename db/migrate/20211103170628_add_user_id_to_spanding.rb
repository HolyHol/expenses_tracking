class AddUserIdToSpanding < ActiveRecord::Migration[6.1]
  def change
    add_column :spendings, :user_id, :integer
  end
end
