class About < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :description, :name, :email, presence: true
end
