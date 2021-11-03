class ChangeCreateSpendings < ActiveRecord::Migration[6.1]
  def change
    remove_column :spendings, :amount, :string
    add_column :spendings, :amount, :integer
  end
end
