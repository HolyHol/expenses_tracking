class AddCategoryIdToSpending < ActiveRecord::Migration[6.1]
  def change
    add_column :spendings, :category_id, :string
  end
end
