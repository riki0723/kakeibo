class Plan < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :payment


  belongs_to :user


  validates :start_time, :name, :price, :payment, presence: true
  validates :payment_id, numericality: { other_than: 1 } 
end
