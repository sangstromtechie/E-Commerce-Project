class OrderProduct < ApplicationRecord
  belongs_to :orders
  belongs_to :products

  validates :name, :quantity, :price, :tax, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, :tax, numericality: true
end
