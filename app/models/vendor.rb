# app/models/vendor.rb
class Vendor < ApplicationRecord
  has_many :purchase_orders
  validates_associated :purchase_orders

  validates :first_name, presence: true, length: { minimum: 5 }
  validates :last_name, presence: true, length: { minimum: 5 }
  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid email format" }
  validates :address, presence: true, length: { minimum: 20 }
  validates :phone_number, presence: true, length: { is: 12 }
end
