class Address < ApplicationRecord
  belongs_to :address_type
  belongs_to :province
  has_and_belongs_to_many :customers

  validates :aptno, :street, :addresstype_id,
            :province_id, :country, presence: true
  validates :aptno, numericality: { only_integer: true }

end
