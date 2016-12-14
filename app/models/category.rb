class Category < ApplicationRecord
  has_many :products
  mount_uploader :photo, PhotoUploader
end
