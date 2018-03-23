class Tax < ApplicationRecord
  belongs_to :province

  validates :name, :rate, :province_id, presence: true
  validates :rate, numericality: true
end
