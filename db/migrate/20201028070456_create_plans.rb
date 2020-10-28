class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date :start_time
      t.string :name
      t.integer :payment_id
      t.text :memo
      t.integer :user_id
      t.timestamps
    end
  end
end
