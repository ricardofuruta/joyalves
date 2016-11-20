class Category < ApplicationRecord
  has_many :products
  has_attachment :photo
end
