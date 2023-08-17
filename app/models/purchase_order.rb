class PurchaseOrder < ApplicationRecord
  belongs_to :vendor
  has_many :purchase_orders_products
  has_many :products, through: :purchase_orders_products
  validates_associated :purchase_orders_products

  enum status: { pending: 0, partialy_delivered: 1, delivered: 2, rejected: 3 }

  validates :order_date, presence: true, nil: false
  validates :expected_delivery_date, presence: true, comparison: {greater_than: :order_date}
  validates :status, presence: true
  
end
