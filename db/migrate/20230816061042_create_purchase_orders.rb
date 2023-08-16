class CreatePurchaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.integer :vendors_id
      t.date :order_date
      t.date :expected_delivery_date

      t.timestamps
    end
  end
end
