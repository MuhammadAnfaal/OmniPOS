class CreateProductVariationCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variation_counts do |t|
      t.integer :products_id
      t.integer :variation_styles_id
      t.integer :count

      t.timestamps
    end
  end
end
