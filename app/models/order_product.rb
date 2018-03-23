class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :name, :quantity, :price, :tax, :product_id, :order_id, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, :tax, numericality: true
end
