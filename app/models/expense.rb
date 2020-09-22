class Expense < ApplicationRecord
  belongs_to :user


  validates :name, :price, :wheretobuy, :category_id, :payment_id, presence: true
  validates :category_id, :payment_id, numericality: { other_than: 1 } 


end
