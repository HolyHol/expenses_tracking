class CreateSpendings < ActiveRecord::Migration[6.1]
  def change
    create_table :spendings do |t|
      t.string :description
      t.string :amount

      t.timestamps
    end
  end
end
