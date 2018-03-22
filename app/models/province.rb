class Province < ApplicationRecord
  has_many :addresses
  has_many :taxes

  validates :name, presence: true
end
