class Address < ApplicationRecord
  belongs_to :addresstype
  belongs_to :province

  validates :aptno, :street, :addresstype_id,
            :province_id, :country, presence: true
  validates :aptno, numericality: { only_integer: true }

end
