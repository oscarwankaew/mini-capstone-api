class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

  def friendly_created_at
    return created_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def friendly_updated_at
    return updated_at.strftime("%e %b %Y %H:%M:%S%p")
  end
end
