class Vendor < ApplicationRecord
  has_many :purchase_orders
  validates_associated :purchase_orders

  validates :first_name, presence :true ,length: { minimum: 5 }
  validates :last_name, presence :true ,length: { minimum: 5 }
  validates :email, uniqueness: true, presence :true
  validates :address, presence :true, length: {minimum:20}
  validates :phone_number, presence :true, length: {minimum:12, maximum:12}
  
end
