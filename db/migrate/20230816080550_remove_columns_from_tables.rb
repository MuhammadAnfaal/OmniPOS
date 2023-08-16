class RemoveColumnsFromTables < ActiveRecord::Migration[6.1]
  def change
    remove_column :product_variation_counts, :variation_styles_id, :integer
    remove_column :purchase_orders_products, :purchase_orders_id, :integer    
  end
end