class CreatePurchaseOrdersProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders_products do |t|
      t.integer :purchase_orders_id
      t.integer :products_id
      t.integer :product_quantity
      t.integer :product_price

      t.timestamps
    end
  end
end
