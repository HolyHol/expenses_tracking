class CreateSharings < ActiveRecord::Migration[6.1]
  def change
    create_table :sharings do |t|
      t.string :user_id
      t.string :shared_to_user_id

      t.timestamps
    end
  end
end
