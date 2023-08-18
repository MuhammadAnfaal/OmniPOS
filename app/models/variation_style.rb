class VariationStyle < ApplicationRecord
  belongs_to :variation_type
  has_many :product_variation_detail
  has_one :product, through: :product_variation_count

  validations :type, presence :true, uniqueness :true
end
