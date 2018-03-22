class Order < ApplicationRecord
  belongs_to :customer

  validates :status, :price, presence: true
  validates :price, numericality: true
end
