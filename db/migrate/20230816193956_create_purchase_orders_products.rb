class CreatePurchaseOrdersProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders_products do |t|
      t.integer :product_quantity
      t.float :product_price
      t.references :purchase_orders, null: false, foreign_key: true
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
