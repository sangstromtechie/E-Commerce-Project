class Product < ApplicationRecord
  belongs_to :category

  validates :name, :status, :price, :instock, presence: true
  validates :instock, numericality: {only_integer: true}
  validates :price, numericality: true
end
