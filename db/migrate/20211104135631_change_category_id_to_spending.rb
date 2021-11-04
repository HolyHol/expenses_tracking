class ChangeCategoryIdToSpending < ActiveRecord::Migration[6.1]
  def change
    remove_column :spendings, :category_id, :string
    add_column :spendings, :category_id, :integer
  end
end
