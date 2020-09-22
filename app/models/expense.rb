class Expense < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :payment


  belongs_to :user


  validates :name, :price, :wheretobuy, :category, :payment, presence: true
  validates :category_id, :payment_id, numericality: { other_than: 1 } 


end
