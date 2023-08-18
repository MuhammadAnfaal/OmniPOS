class ProductPrice < ApplicationRecord
  belongs_to :product
  validates_associated :product

  validates :price, allow_nil: true
  validates :date, uninqueness: true
  
end
