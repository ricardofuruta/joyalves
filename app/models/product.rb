class Product < ApplicationRecord
  belongs_to :category
  has_many :product_photos
  monetize :price_centavos
end
