class Tax < ApplicationRecord
  belongs_to :provinces

  validates :name, :rate, :provinces_id, presence: true
  validates :rate, numericality: true
end
