class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|

      t.date :start_time
      t.string :name
      t.string :price
      t.string :wheretobuy
      t.integer :category_id
      t.integer :payment_id
      t.text :memo
      t.integer :user_id

      t.timestamps
    end
  end
end
