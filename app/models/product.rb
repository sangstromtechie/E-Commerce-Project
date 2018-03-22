class Product < ApplicationRecord
  belongs_to :category
  has_many :order_products

  validates :name, :status, :price, :instock, presence: true
  validates :instock, numericality: {only_integer: true}
  validates :price, numericality: true
end
