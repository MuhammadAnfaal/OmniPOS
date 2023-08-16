class Product < ApplicationRecord
  has_one :product_variation_count
  has_one :variation_style, through: :product_variation_count
  has_many :purchase_orders_products
  has_many :purchase_orders, through: :purchase_orders_products
  has_many :prices
end
