class Product < ApplicationRecord
  has_many :product_variation_detail
  has_one :variation_style, through: :product_variation_count
  has_many :purchase_orders_products
  has_many :purchase_orders, through: :purchase_orders_products
  has_many :prices
  validates_associated :product_variation_detail
  validates_associated :purchase_orders_products

  validates :name, presence: true, uniqueness: true, length: {minimum:20}
  validates :quantity_in_stock, allow_nil: true
  validates :description, length: {minimum:25}
  
end
