class CreateProductPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :product_prices do |t|
      t.float :price
      t.datetime :date
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
