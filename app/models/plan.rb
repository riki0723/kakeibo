class Plan < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :payment


  belongs_to :user


  validates :start_time, :name, :payment, presence: true
  validates :payment_id, numericality: { other_than: 1 } 

  with_options presence: true, format: { with: /\A[0-9]+\d\z/, message: '半角数字で入力してください' } do
    validates :price
  end
end
