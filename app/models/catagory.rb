class Catagory < ApplicationRecord
  has_many :sub_catagories
  validates_associated :sub_catagories

  validates :name, presence: true, uniqueness: true, length: {maximum: 20}  
  
end
