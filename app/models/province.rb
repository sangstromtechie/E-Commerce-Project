class Province < ApplicationRecord
  has_many :addresses
  has_many :province_taxes
  has_many :taxes, through: :province_taxes

  accepts_nested_attributes_for :province_taxes, allow_destroy: true

  validates :name, presence: true, uniqueness: true
end
