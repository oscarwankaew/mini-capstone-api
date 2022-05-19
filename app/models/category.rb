class Category < ApplicationRecord
  has_many :categoryproducts
  has_many :products, through: :categoryproducts
  # def products
  #   category_products.map do |category_product|
  #     category_product.product
  #   end
  # end
end
