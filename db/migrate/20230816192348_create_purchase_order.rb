class CreatePurchaseOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.datetime :order_date
      t.datetime :expected_delivery_date
      t.references :vendor, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
