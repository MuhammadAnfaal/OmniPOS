class ProductVariationDetail < ApplicationRecord
  belongs_to :variation_style
  belongs_to :product
  validates_associated :variation_style

  validates :count, allow_nil: true
  validates :variation_style1_id, allow_nil: true
  validates :variation_style2_id, allow_nil: true
end
