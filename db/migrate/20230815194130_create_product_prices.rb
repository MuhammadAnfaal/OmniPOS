class CreateProductPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :product_prices do |t|
      t.integer :price
      t.date :date
      t.integer :products_id

      t.timestamps
    end
  end
end
