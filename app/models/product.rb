class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  belongs_to :supplier
  has_many :images
  has_many :categoryproducts
  has_many :carted_products
  has_many :categories, through: :categoryproducts
  has_many :orders, through: :carted_products

  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

  # def categories
  #   categories_array = []
  #   category_products.each do |category_product|
  #     categories_array << category_product.category
  #   end
  # end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end
