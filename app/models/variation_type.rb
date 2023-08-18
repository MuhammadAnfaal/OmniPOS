class VariationType < ApplicationRecord
  belongs_to :sub_catagory
  has_many :variation_styles
  validates_associated :variation_styles

  validates :validate_type_count

  private

  def validate_type_count
    type_count = self.class.where(type: type).count
    unless [1, 2].include?(type_count)
      errors.add(:type, "should have 1 or 2 occurrences")
    end
  end
end