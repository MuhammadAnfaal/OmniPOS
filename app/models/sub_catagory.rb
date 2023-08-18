class SubCatagory < ApplicationRecord
  belongs_to :catagory
  has_many :variation_types
  validates_associated :variation_types

  validates :type_name, presence :true, uniqueness :true 
end
