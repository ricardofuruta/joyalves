class Product < ApplicationRecord
  belongs_to :category
  monetize :price_centavos
end
