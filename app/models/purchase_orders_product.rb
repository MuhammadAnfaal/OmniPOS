class PurchaseOrdersProduct < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :product

  validates :product_quantity, presence: true  
  
end
