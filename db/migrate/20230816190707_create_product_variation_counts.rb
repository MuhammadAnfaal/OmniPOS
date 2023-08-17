class CreateProductVariationCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variation_details do |t|
      t.integer :count

      t.references :variation_style1, foreign_key: {to_table: :variation_styles}
      t.references :variation_style2, foreign_key: {to_table: :variation_styles}
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
