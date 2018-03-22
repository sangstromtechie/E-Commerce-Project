class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products

  validates :status, :price, presence: true
  validates :price, numericality: true
end
