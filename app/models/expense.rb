class Expense < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :payment


  belongs_to :user

  
  validates :start_time, :name, :wheretobuy, :category, :payment, presence: true
  validates :category_id, :payment_id, numericality: { other_than: 1 } 

  with_options presence: true, format: { with: /\A[0-9]+\d\z/, message: '半角数字で入力してください' } do
    validates :price
  end


end
