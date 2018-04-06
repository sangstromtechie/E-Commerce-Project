class ProvinceTax < ApplicationRecord
  belongs_to :province
  belongs_to :tax

  validates :rate, presence: true

  validates_uniqueness_of [:province_id, :tax_id], :scope => [:province_id, :tax_id]
end
