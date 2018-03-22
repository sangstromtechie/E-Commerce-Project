class About < ApplicationRecord
  validates :description, :name, :email, presence: true
end
