class Address < ApplicationRecord
  belongs_to :address_type
  belongs_to :province
  has_and_belongs_to_many :customers

  validates :street, :address_type_id, :province_id, presence: true
  validates :aptno, numericality: { only_integer: true }

end
